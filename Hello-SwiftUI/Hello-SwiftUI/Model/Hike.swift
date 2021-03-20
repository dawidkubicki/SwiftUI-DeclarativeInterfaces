//
//  Hike.swift
//  Hello-SwiftUI
//
//  Created by Dawid Kubicki on 20/03/2021.
//

import Foundation

struct Hike {
    var name: String
    var imageURL: String
    var miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        return [
            Hike(name: "Some name one", imageURL: "desert", miles: 4.2),
            Hike(name: "Another name", imageURL: "desert2", miles: 91.2),
            Hike(name: "one more", imageURL: "desert", miles: 123.3)
        ]
    }
    
}
