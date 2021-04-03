//
//  AddCoffeeOrderView.swift
//  CoffeeOrderingApp
//
//  Created by Dawid Kubicki on 03/04/2021.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    var body: some View {
        NavigationView {
            
            VStack {
                Form {
                    Section(header: Text("Information").font(.body)) {
                        TextField("Enter name", text: self.$addCoffeeOrderVM.name)
                    }
                    
                    Section(header: Text("Select Coffee").font(.body)) {
                        ForEach(addCoffeeOrderVM.coffeeList, id: \.name) { coffee in
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                        }
                    }
                    
                    Section(header: Text("Select Coffe").font(.body), footer: Text("Total")) {
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            Text("Small").tag("Small")
                            Text("Medium").tag("Medium")
                            Text("Large").tag("Large")
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                HStack {
                    Button("Place Order") {
                        
                    }.padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100)).foregroundColor(.white).background(Color.blue)
                }
                
            }
            .navigationBarTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView()
    }
}

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 40, maxWidth: 40, minHeight: 40, maxHeight: 40, alignment: .leading)
            Text(coffee.name)
                .font(.callout)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "").padding()
        }.onTapGesture {
            self.selection = self.coffee.name
            
        }
    }
}
