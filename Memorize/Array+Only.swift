//
//  Array+Only.swift
//  Memorize
//
//  Created by Ognjen Lazic on 16. 2. 2021..
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
