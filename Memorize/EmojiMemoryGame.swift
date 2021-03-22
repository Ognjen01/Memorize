//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ognjen Lazic on 12. 2. 2021..
//

import Foundation
import SwiftUI

func createCardContent(pirIndex: Int) -> String {
    return "🤯"
}

class EmojiMemoryGame: ObservableObject {
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "☠️", "👺", "👹", "🤡", "🎃"]
            return MemoryGame<String> (numberOfPairsOfCards: emojis.count ) { pairIndex in
            return emojis[pairIndex]
        }
        
    }
    
    
    // MARK: - Acess to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
        
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
