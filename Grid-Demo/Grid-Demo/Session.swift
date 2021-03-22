//
//  Session.swift
//  Grid-Demo
//
//  Created by Dawid Kubicki on 22/03/2021.
//

import Foundation
import SwiftUI

struct Session:Hashable {
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}

extension Session {
    static func all() -> [Session] {
        return [
            Session(name: "Model1", price: 123, imageURL: "1"),
            Session(name: "Model2", price: 5342, imageURL: "2"),
            Session(name: "Model3", price: 97, imageURL: "3"),
            Session(name: "Model4", price: 123, imageURL: "2"),
            Session(name: "Model5", price: 5342, imageURL: "3"),
            Session(name: "Model6", price: 97, imageURL: "1")
        ]
    }
}
