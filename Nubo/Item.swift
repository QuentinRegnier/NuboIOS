//
//  Item.swift
//  Nubo
//
//  Created by Quentin Régnier on 29/06/2025.
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
