//
//  AnotherExample.swift
//  ObservableObject
//
//  Created by Dawid Kubicki on 27/03/2021.
//

import SwiftUI

struct AnotherExample: View {
    
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
            Button("Increment score") {
                self.userSettings.score += 1
            }
            
            FancyScoreView(score: self.$userSettings.score)
        }
    }
}

struct AnotherExample_Previews: PreviewProvider {
    static var previews: some View {
        AnotherExample()
    }
}
