
import SwiftUI

@main
struct GameApp: App {
    @StateObject var gameStore = GameStore()
    var body: some Scene {
        WindowGroup {
            ContentView().enviromentObject(gameStore)
        }
    }
}
