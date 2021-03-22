//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Dawid Kubicki on 22/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            //rows
            ForEach(0..<5) { _ in
                
                HStack {
                    
                    //Columns
                    ForEach(0..<2) { _ in
                        Image("1")
                            .resizable()
                            .scaledToFit()
                    }
                }
                
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
