import SwiftUI
import WebKit

/// Le jeu est une page HTML embarquée dans l'app (dossier Game) : aucun réseau, aucune donnée collectée.
struct AppView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.websiteDataStore = .default()          // garde les records (localStorage) entre les lancements
        let web = WKWebView(frame: .zero, configuration: config)
        web.isOpaque = false
        web.backgroundColor = UIColor(red: 255/255, green: 247/255, blue: 232/255, alpha: 1)
        web.scrollView.backgroundColor = web.backgroundColor
        web.scrollView.bounces = false
        web.scrollView.isScrollEnabled = true
        web.scrollView.contentInsetAdjustmentBehavior = .never
        web.allowsLinkPreview = false
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "App") {
            web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return web
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        AppView()
    }
}
