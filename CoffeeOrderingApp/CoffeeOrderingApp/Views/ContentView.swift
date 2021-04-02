//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Dawid Kubicki on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        
        NavigationView {
            OrderListView(orders: self.orderListVM.orders)
            .navigationBarTitle("Coffee orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
