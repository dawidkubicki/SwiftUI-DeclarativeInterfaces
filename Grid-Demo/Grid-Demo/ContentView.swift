//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Dawid Kubicki on 22/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    let sessions = Session.all()
    
    var body: some View {
    
        let chunkedSessions = sessions.chunked(into: 3)
        
        return List {
            ForEach(0..<chunkedSessions.count) { index in
                HStack {
                    ForEach(chunkedSessions[index], id: \.self) { session in
                        Image(session.imageURL)
                            .resizable()
                            .frame(width: 110, height: 110)
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
