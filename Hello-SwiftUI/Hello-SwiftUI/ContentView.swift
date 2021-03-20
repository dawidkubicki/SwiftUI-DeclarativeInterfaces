//
//  ContentView.swift
//  Hello-SwiftUI
//
//  Created by Dawid Kubicki on 20/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.center) {
            
            Image("onion")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle()) //cannot be actuaaly seen in this case
            
            Text("Title 1")
                .font(.headline)
                .padding()
            Text("Title 2")
                .font(.body)
            HStack {
                Text("Left Side")
                Text("Right Side")
            }
            .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
