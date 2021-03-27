//
//  FancyScoreView.swift
//  ObservableObject
//
//  Created by Dawid Kubicki on 27/03/2021.
//

import SwiftUI

struct FancyScoreView: View {
    
    //Binding means that it will be send from outside
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("0")
            Button("Increment score") {
                
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
        FancyScoreView(score: .constant(0))
    }
}
