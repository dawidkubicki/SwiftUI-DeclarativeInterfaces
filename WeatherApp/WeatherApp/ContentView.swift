//
//  ContentView.swift
//  WeatherApp
//
//  Created by Dawid Kubicki on 29/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack {
            TextField("Enter city name: ", text:
                        self.$weatherVM.cityName) {
                self.weatherVM.search()
            }.font(.custom("Arial", size: 50))
            .padding()
            .fixedSize()
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 50))
                .offset(y: 100)
                .foregroundColor(Color.white)
                .padding()
               
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
