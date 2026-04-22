import SwiftUI
import UIKit

struct PianoKeyboard: UIViewRepresentable {
    let lowestMidi: UInt8
    let highestMidi: UInt8
    var showLabels: Bool = true
    var highlightedMidis: Set<UInt8> = []
    var expectedMidis: Set<UInt8> = []
    var fingerByMidi: [UInt8: Int] = [:]
    var onNoteOn: (UInt8) -> Void
    var onNoteOff: (UInt8) -> Void

    func makeUIView(context: Context) -> PianoKeyboardUIView {
        let view = PianoKeyboardUIView(lowestMidi: lowestMidi, highestMidi: highestMidi)
        view.onNoteOn = onNoteOn
        view.onNoteOff = onNoteOff
        view.showLabels = showLabels
        view.externalHighlighted = highlightedMidis
        view.externalExpected = expectedMidis
        view.fingerByMidi = fingerByMidi
        return view
    }

    func updateUIView(_ uiView: PianoKeyboardUIView, context: Context) {
        uiView.onNoteOn = onNoteOn
        uiView.onNoteOff = onNoteOff
        uiView.showLabels = showLabels
        uiView.externalHighlighted = highlightedMidis
        uiView.externalExpected = expectedMidis
        uiView.fingerByMidi = fingerByMidi
    }
}

final class PianoKeyboardUIView: UIView {
    var onNoteOn: ((UInt8) -> Void)?
    var onNoteOff: ((UInt8) -> Void)?
    var showLabels: Bool = true { didSet { setNeedsDisplay() } }
    var externalHighlighted: Set<UInt8> = [] {
        didSet { if oldValue != externalHighlighted { setNeedsDisplay() } }
    }
    var externalExpected: Set<UInt8> = [] {
        didSet { if oldValue != externalExpected { setNeedsDisplay() } }
    }
    var fingerByMidi: [UInt8: Int] = [:] {
        didSet { if oldValue != fingerByMidi { setNeedsDisplay() } }
    }

    private let lowestMidi: UInt8
    private let highestMidi: UInt8
    private let blackKeyWidthRatio: CGFloat = 0.6
    private let blackKeyHeightRatio: CGFloat = 0.62
    private static let middleC: UInt8 = 60

    private var whiteKeys: [(midi: UInt8, rect: CGRect)] = []
    private var blackKeys: [(midi: UInt8, rect: CGRect)] = []
    private var touchToMidi: [UITouch: UInt8] = [:]
    private var pressedMidis: Set<UInt8> = []

    private func isPressed(_ midi: UInt8) -> Bool {
        pressedMidis.contains(midi) || externalHighlighted.contains(midi)
    }

    private func isExpected(_ midi: UInt8) -> Bool {
        externalExpected.contains(midi)
    }

    init(lowestMidi: UInt8, highestMidi: UInt8) {
        self.lowestMidi = lowestMidi
        self.highestMidi = highestMidi
        super.init(frame: .zero)
        isMultipleTouchEnabled = true
        backgroundColor = UIColor(white: 0.9, alpha: 1)
        contentMode = .redraw
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) not supported") }

    static func isWhite(_ midi: UInt8) -> Bool {
        ![1, 3, 6, 8, 10].contains(Int(midi) % 12)
    }

    private static func whiteNoteLetter(_ midi: UInt8) -> String {
        switch Int(midi) % 12 {
        case 0: return "C"
        case 2: return "D"
        case 4: return "E"
        case 5: return "F"
        case 7: return "G"
        case 9: return "A"
        case 11: return "B"
        default: return ""
        }
    }

    private static func octave(_ midi: UInt8) -> Int { Int(midi) / 12 - 1 }

    private var whiteKeyCount: Int {
        (lowestMidi...highestMidi).filter { Self.isWhite($0) }.count
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        computeKeyRects()
        setNeedsDisplay()
    }

    private func computeKeyRects() {
        whiteKeys.removeAll()
        blackKeys.removeAll()

        let count = whiteKeyCount
        guard count > 0, bounds.width > 0, bounds.height > 0 else { return }

        let whiteKeyWidth = bounds.width / CGFloat(count)
        let h = bounds.height
        var x: CGFloat = 0
        var whiteOriginByMidi: [UInt8: CGFloat] = [:]

        for midi in lowestMidi...highestMidi where Self.isWhite(midi) {
            let rect = CGRect(x: x, y: 0, width: whiteKeyWidth, height: h)
            whiteKeys.append((midi, rect))
            whiteOriginByMidi[midi] = x
            x += whiteKeyWidth
        }

        let blackWidth = whiteKeyWidth * blackKeyWidthRatio
        let blackHeight = h * blackKeyHeightRatio
        for midi in lowestMidi...highestMidi where !Self.isWhite(midi) {
            guard let leftWhite = nearestWhiteBelow(midi),
                  let leftX = whiteOriginByMidi[leftWhite] else { continue }
            let boundary = leftX + whiteKeyWidth
            let rect = CGRect(
                x: boundary - blackWidth / 2,
                y: 0,
                width: blackWidth,
                height: blackHeight
            )
            blackKeys.append((midi, rect))
        }
    }

    private func nearestWhiteBelow(_ midi: UInt8) -> UInt8? {
        var m = Int(midi) - 1
        while m >= Int(lowestMidi) {
            if Self.isWhite(UInt8(m)) { return UInt8(m) }
            m -= 1
        }
        return nil
    }

    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }

        drawWhiteKeys(ctx)
        drawBlackKeys(ctx)
        drawFingerBadges(ctx)
    }

    private func drawWhiteKeys(_ ctx: CGContext) {
        let pressedFill = UIColor.systemBlue.withAlphaComponent(0.35)
        let expectedFill = UIColor.systemGreen.withAlphaComponent(0.25)
        let shadowFill = UIColor(white: 0, alpha: 0.12)
        let borderColor = UIColor(white: 0, alpha: 0.4)
        let labelColor = UIColor(white: 0.35, alpha: 1)
        let middleCColor = UIColor.systemOrange

        for (midi, r) in whiteKeys {
            let pressed = isPressed(midi)
            let expected = isExpected(midi)
            let fill: UIColor
            if pressed { fill = pressedFill }
            else if expected { fill = expectedFill }
            else { fill = .white }
            ctx.setFillColor(fill.cgColor)
            ctx.fill(r)

            if pressed {
                let inset = r.insetBy(dx: 1, dy: 0).offsetBy(dx: 0, dy: 2)
                ctx.setFillColor(shadowFill.cgColor)
                ctx.fill(CGRect(x: inset.minX, y: inset.minY, width: inset.width, height: 3))
            }

            ctx.setStrokeColor(borderColor.cgColor)
            ctx.setLineWidth(0.5)
            ctx.stroke(r)

            if midi == Self.middleC {
                let dotSize: CGFloat = 6
                let dot = CGRect(
                    x: r.midX - dotSize / 2,
                    y: r.maxY - dotSize - 22,
                    width: dotSize,
                    height: dotSize
                )
                ctx.setFillColor(middleCColor.cgColor)
                ctx.fillEllipse(in: dot)
            }

            if showLabels {
                let isC = Int(midi) % 12 == 0
                let letter = Self.whiteNoteLetter(midi)
                let text = isC ? "\(letter)\(Self.octave(midi))" : letter
                let color: UIColor = (midi == Self.middleC) ? middleCColor : labelColor
                drawLabel(text, in: r, color: color, bold: isC)
            }
        }
    }

    private func drawBlackKeys(_ ctx: CGContext) {
        let pressedFill = UIColor.systemBlue
        let expectedFill = UIColor.systemGreen

        for (midi, r) in blackKeys {
            let pressed = isPressed(midi)
            let expected = isExpected(midi)
            let fill: UIColor
            if pressed { fill = pressedFill }
            else if expected { fill = expectedFill }
            else { fill = .black }
            ctx.setFillColor(fill.cgColor)
            let path = UIBezierPath(
                roundedRect: r,
                byRoundingCorners: [.bottomLeft, .bottomRight],
                cornerRadii: CGSize(width: 4, height: 4)
            )
            ctx.addPath(path.cgPath)
            ctx.fillPath()
        }
    }

    private func drawFingerBadges(_ ctx: CGContext) {
        guard !externalExpected.isEmpty, !fingerByMidi.isEmpty else { return }

        let badgeColor = UIColor.systemGreen
        let numberColor = UIColor.white

        for midi in externalExpected {
            guard let finger = fingerByMidi[midi] else { continue }
            let rect: CGRect
            let isBlack: Bool
            if let wk = whiteKeys.first(where: { $0.midi == midi }) {
                rect = wk.rect
                isBlack = false
            } else if let bk = blackKeys.first(where: { $0.midi == midi }) {
                rect = bk.rect
                isBlack = true
            } else {
                continue
            }

            let diameter: CGFloat = min(24, rect.width * (isBlack ? 0.85 : 0.55))
            let topInset: CGFloat = isBlack ? 10 : 12
            let badgeRect = CGRect(
                x: rect.midX - diameter / 2,
                y: rect.minY + topInset,
                width: diameter,
                height: diameter
            )

            ctx.setFillColor(badgeColor.cgColor)
            ctx.fillEllipse(in: badgeRect)
            ctx.setStrokeColor(UIColor.white.withAlphaComponent(0.9).cgColor)
            ctx.setLineWidth(1.5)
            ctx.strokeEllipse(in: badgeRect)

            let font = UIFont.systemFont(ofSize: diameter * 0.6, weight: .bold)
            let attrs: [NSAttributedString.Key: Any] = [
                .font: font,
                .foregroundColor: numberColor,
            ]
            let text = NSAttributedString(string: "\(finger)", attributes: attrs)
            let textSize = text.size()
            let origin = CGPoint(
                x: badgeRect.midX - textSize.width / 2,
                y: badgeRect.midY - textSize.height / 2
            )
            text.draw(at: origin)
        }
    }

    private func drawLabel(_ text: String, in keyRect: CGRect, color: UIColor, bold: Bool) {
        let fontSize = max(9, min(13, keyRect.width * 0.38))
        let font = bold
            ? UIFont.systemFont(ofSize: fontSize, weight: .semibold)
            : UIFont.systemFont(ofSize: fontSize, weight: .regular)
        let attrs: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: color,
        ]
        let attr = NSAttributedString(string: text, attributes: attrs)
        let size = attr.size()
        guard size.width <= keyRect.width - 2 else { return }
        let origin = CGPoint(
            x: keyRect.midX - size.width / 2,
            y: keyRect.maxY - size.height - 6
        )
        attr.draw(at: origin)
    }

    private func midi(at point: CGPoint) -> UInt8? {
        for (midi, r) in blackKeys where r.contains(point) { return midi }
        for (midi, r) in whiteKeys where r.contains(point) { return midi }
        return nil
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let p = touch.location(in: self)
            guard let midi = midi(at: p) else { continue }
            touchToMidi[touch] = midi
            if pressedMidis.insert(midi).inserted {
                onNoteOn?(midi)
            }
        }
        setNeedsDisplay()
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let newMidi = midi(at: touch.location(in: self))
            let oldMidi = touchToMidi[touch]
            if oldMidi == newMidi { continue }

            if let old = oldMidi, !isHeldByOtherTouch(old, excluding: touch) {
                pressedMidis.remove(old)
                onNoteOff?(old)
            }
            if let new = newMidi, pressedMidis.insert(new).inserted {
                onNoteOn?(new)
            }
            touchToMidi[touch] = newMidi
        }
        setNeedsDisplay()
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        releaseTouches(touches)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        releaseTouches(touches)
    }

    private func releaseTouches(_ touches: Set<UITouch>) {
        for touch in touches {
            guard let midi = touchToMidi.removeValue(forKey: touch) else { continue }
            if !isHeldByOtherTouch(midi, excluding: touch) {
                pressedMidis.remove(midi)
                onNoteOff?(midi)
            }
        }
        setNeedsDisplay()
    }

    private func isHeldByOtherTouch(_ midi: UInt8, excluding: UITouch) -> Bool {
        touchToMidi.contains { $0.key != excluding && $0.value == midi }
    }
}
