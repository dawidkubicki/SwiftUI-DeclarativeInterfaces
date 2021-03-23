//
//  Dish.swift
//  State
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
}

extension Dish {
    
    static func all() -> [Dish] {
        return [
            Dish(name: "Kung Pow Chicken", imageURL: "kungpow", isSpicy: true),
            Dish(name: "Sweet and sour Chicken", imageURL: "sweet", isSpicy: false),
            Dish(name: "Spicy Red Chicken", imageURL: "spicy", isSpicy: true)
        ]
    }
    
}
