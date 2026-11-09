import SwiftUI

@main
struct RacinesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .ignoresSafeArea()
                .background(Color(red: 255/255, green: 247/255, blue: 232/255))
                .preferredColorScheme(.light)
        }
    }
}
