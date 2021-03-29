//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Dawid Kubicki on 29/03/2021.
//

import Foundation

class WeatherService {
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?q=\(city)&appid=ccbd1bb19c840e7b9e9c6dd4aed280ba") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weahter = weatherResponse.main
                completion(weahter)
            } else {
                completion(nil)
            }
            
        }.resume()
        
    }
}
