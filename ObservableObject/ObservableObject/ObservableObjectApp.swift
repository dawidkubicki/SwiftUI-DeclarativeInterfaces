//
//  ObservableObjectApp.swift
//  ObservableObject
//
//  Created by Dawid Kubicki on 27/03/2021.
//

import SwiftUI

@main
struct ObservableObjectApp: App {
    
    let userSettings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            AnotherExample().environmentObject(userSettings)
        }
    }
}
