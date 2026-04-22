import SwiftUI
import WebKit

struct SheetMusicView: UIViewRepresentable {
    var measures: [Measure]
    var onReady: (() -> Void)?
    var onError: ((String) -> Void)?
    var commands: AsyncStream<SheetCommand>?

    func makeCoordinator() -> Coordinator {
        Coordinator(onReady: onReady, onError: onError)
    }

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        let controller = WKUserContentController()
        controller.add(context.coordinator, name: "sheet")
        config.userContentController = controller
        config.defaultWebpagePreferences.allowsContentJavaScript = true

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.isScrollEnabled = false
        webView.isOpaque = false
        webView.backgroundColor = .white
        webView.navigationDelegate = context.coordinator
        context.coordinator.webView = webView
        context.coordinator.pendingMeasures = measures

        if let url = Bundle.main.url(forResource: "sheet-music", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        } else {
            onError?("sheet-music.html not found in bundle")
        }

        if let commands {
            Task { @MainActor in
                for await command in commands {
                    context.coordinator.dispatch(command)
                }
            }
        }

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        context.coordinator.onReady = onReady
        context.coordinator.onError = onError
        context.coordinator.updateMeasures(measures)
    }

    static func dismantleUIView(_ webView: WKWebView, coordinator: Coordinator) {
        webView.configuration.userContentController.removeScriptMessageHandler(forName: "sheet")
    }

    @MainActor
    final class Coordinator: NSObject, WKScriptMessageHandler, WKNavigationDelegate {
        var onReady: (() -> Void)?
        var onError: ((String) -> Void)?
        weak var webView: WKWebView?
        var pendingMeasures: [Measure] = []
        private var lastDispatchedMeasures: Data?
        private var isReady = false

        init(onReady: (() -> Void)?, onError: ((String) -> Void)?) {
            self.onReady = onReady
            self.onError = onError
        }

        func updateMeasures(_ measures: [Measure]) {
            pendingMeasures = measures
            guard isReady else { return }
            dispatch(.renderMeasures(measures), dedupe: true)
        }

        func dispatch(_ command: SheetCommand) {
            dispatch(command, dedupe: false)
        }

        private func dispatch(_ command: SheetCommand, dedupe: Bool) {
            guard let webView else { return }
            let js: String
            do {
                js = try command.javascript()
            } catch {
                onError?("encode failed: \(error)")
                return
            }
            if dedupe, case .renderMeasures = command {
                let signature = js.data(using: .utf8)
                if signature == lastDispatchedMeasures { return }
                lastDispatchedMeasures = signature
            }
            webView.evaluateJavaScript(js) { [weak self] _, error in
                if let error { self?.onError?("JS error: \(error.localizedDescription)") }
            }
        }

        nonisolated func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
            guard message.name == "sheet" else { return }
            let body = message.body
            Task { @MainActor in
                self.handle(body: body)
            }
        }

        private func handle(body: Any) {
            guard let dict = body as? [String: Any],
                  let sheetMessage = SheetMessage(dictionary: dict) else {
                return
            }
            switch sheetMessage {
            case .ready:
                isReady = true
                onReady?()
                if !pendingMeasures.isEmpty {
                    dispatch(.renderMeasures(pendingMeasures), dedupe: true)
                }
            case let .error(message, source, line):
                let loc = [source, line.map(String.init)].compactMap { $0 }.joined(separator: ":")
                let suffix = loc.isEmpty ? "" : " (\(loc))"
                onError?("sheet: \(message)\(suffix)")
            case .unknown:
                break
            }
        }
    }
}
