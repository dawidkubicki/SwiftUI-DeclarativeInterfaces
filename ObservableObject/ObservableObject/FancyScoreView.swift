//
//  FancyScoreView.swift
//  ObservableObject
//
//  Created by Dawid Kubicki on 27/03/2021.
//

import SwiftUI

struct FancyScoreView: View {
    
    //Binding decorator means that it will be send from outside
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            Button("Increment score") {
                self.userSettings.score += 1
            } //:Button
            .padding()
            .background(Color.green)
        } //:VStack
        .padding()
        .background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
