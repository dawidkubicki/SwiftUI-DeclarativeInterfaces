//
//  Webservice.swift
//  CoffeeOrderingApp
//
//  Created by Dawid Kubicki on 02/04/2021.
//

import Foundation

class Webservice {
    
    
    func createCoffeeOrder(order: Order,completion: @escaping (CreateOrderResponse?) -> ()) {
        
        guard let url = URL(string: "https://sumptuous-veil-toast.glitch.me/orders") else {
            fatalError("Invalid URL")
        }
        
        var request = URLRequest(url:url)
        request.httpMethod = "POST"
        request.addValue("application/JSON", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(order)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let createOrdeerResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
            DispatchQueue.main.async {
                completion(createOrdeerResponse)
            }
            
        }.resume()
    }
    
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()) {
        guard let url = URL(string: "https://sumptuous-veil-toast.glitch.me/orders") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.async {
                completion(orders)
            }
            
        }.resume()
    }
}
