//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ognjen Lazic on 11. 2. 2021..
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
