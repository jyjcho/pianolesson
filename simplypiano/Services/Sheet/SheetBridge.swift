import Foundation

enum SheetMessage {
    case ready
    case error(message: String, source: String?, line: Int?)
    case unknown(String)

    init?(dictionary: [String: Any]) {
        guard let type = dictionary["type"] as? String else { return nil }
        switch type {
        case "READY":
            self = .ready
        case "ERROR":
            let message = (dictionary["message"] as? String) ?? "unknown"
            let source = dictionary["source"] as? String
            let line = dictionary["line"] as? Int
            self = .error(message: message, source: source, line: line)
        default:
            self = .unknown(type)
        }
    }
}

enum HighlightState: String, Codable {
    case expected
    case correct
    case wrong
    case clear
}

enum SheetCommand {
    case renderMeasures([Measure])
    case highlightNote(pitch: Pitch, state: HighlightState)
    case clearHighlights
    case clear

    func javascript() throws -> String {
        let encoder = JSONEncoder()
        switch self {
        case .renderMeasures(let measures):
            let data = try encoder.encode(measures.map(MeasureDTO.init(measure:)))
            let json = String(data: data, encoding: .utf8) ?? "[]"
            return "window.sheet && window.sheet.renderMeasures(\(json));"
        case .highlightNote(let pitch, let state):
            let dto = HighlightDTO(note: pitch.note.rawValue, octave: pitch.octave, state: state.rawValue)
            let data = try encoder.encode(dto)
            let json = String(data: data, encoding: .utf8) ?? "{}"
            return "window.sheet && window.sheet.highlightNote(\(json));"
        case .clearHighlights:
            return "window.sheet && window.sheet.clearHighlights();"
        case .clear:
            return "window.sheet && window.sheet.clear();"
        }
    }
}

private struct HighlightDTO: Encodable {
    let note: String
    let octave: Int
    let state: String
}

private struct PitchDTO: Encodable {
    let note: String
    let octave: Int
    let accidental: String?

    init(pitch: Pitch) {
        self.note = pitch.note.rawValue
        self.octave = pitch.octave
        self.accidental = pitch.accidental?.rawValue
    }
}

private struct MusicNoteDTO: Encodable {
    let kind: String
    let duration: String
    let pitches: [PitchDTO]?

    init(note: MusicNote) {
        switch note {
        case let .note(pitches, duration, _):
            self.kind = "note"
            self.duration = duration.rawValue
            self.pitches = pitches.map(PitchDTO.init(pitch:))
        case let .rest(duration):
            self.kind = "rest"
            self.duration = duration.rawValue
            self.pitches = nil
        }
    }
}

private struct TimeSignatureDTO: Encodable {
    let numerator: Int
    let denominator: Int

    init(_ ts: TimeSignature) {
        self.numerator = ts.numerator
        self.denominator = ts.denominator
    }
}

private struct MeasureDTO: Encodable {
    let notes: [MusicNoteDTO]
    let timeSignature: TimeSignatureDTO

    init(measure: Measure) {
        self.notes = measure.notes.map(MusicNoteDTO.init(note:))
        self.timeSignature = TimeSignatureDTO(measure.timeSignature)
    }
}
