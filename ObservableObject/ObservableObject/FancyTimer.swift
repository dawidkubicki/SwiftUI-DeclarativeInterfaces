//
//  FancyTimer.swift
//  ObservableObject
//
//  Created by Dawid Kubicki on 27/03/2021.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
    
}