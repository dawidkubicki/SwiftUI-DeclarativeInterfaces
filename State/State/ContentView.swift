//
//  ContentView.swift
//  State
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Variables
    
    @State var name: String = "John"
    
    var body: some View {
        VStack {
            Text(name)
                .padding()
                .font(.largeTitle)
            Button(action: {
                self.name = "Mary"
            }) {
                Text("Change Name")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
