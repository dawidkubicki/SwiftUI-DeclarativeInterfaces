//
//  ContentView.swift
//  PodcastPlayer
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Variables
    
    let episode = Episode(name: "Macbreak Weekly", track: "WWDC 2021")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(self.episode.name)
                .padding(1)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)

        }
    }
}


struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }.padding(12)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
