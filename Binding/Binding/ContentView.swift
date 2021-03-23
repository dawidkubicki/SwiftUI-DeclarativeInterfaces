//
//  ContentView.swift
//  Binding
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    private func printName() {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name)
                .padding()
            TextField("Enter text", text: $name)
                .padding(12)
            
            Button(action: printName) {
                Text("Show name value")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
