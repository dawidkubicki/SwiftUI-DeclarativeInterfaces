//
//  ContentView.swift
//  Hello-SwiftUI
//
//  Created by Dawid Kubicki on 20/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - variables
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(
                    destination: HikeDetail(hike: hike),
                    label: {
                        HikeCell(hike: hike)
                    })
            }
            .navigationBarTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        
            HStack {
                Image(hike.imageURL)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(16)
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.title)
                    Text(String(format: "%.2f", hike.miles))
                }
            }
        }
}
