//
//  Item.swift
//  P2HACKS2023Playground
//
//  Created by Kanta Oikawa on 2023/12/03.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
