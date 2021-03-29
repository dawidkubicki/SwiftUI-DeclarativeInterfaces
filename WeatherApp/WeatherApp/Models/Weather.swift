//
//  Weather.swift
//  WeatherApp
//
//  Created by Dawid Kubicki on 29/03/2021.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
