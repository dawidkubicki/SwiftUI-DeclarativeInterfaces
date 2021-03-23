//
//  ContentView.swift
//  State
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Variables
    var model = Dish.all()
    @State private var isSpicy = false
    
    var body: some View {
        List {
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(self.model.filter{ $0.isSpicy ==
                self.isSpicy
            }) { dish in
                HStack {
                    Image(dish.imageURL)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    if(dish.isSpicy) {
                        Image("spicy-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35)
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
