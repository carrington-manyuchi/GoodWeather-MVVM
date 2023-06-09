//
//  WeatherResponse.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation

struct WeatherResponse: Codable {
let main: Weather
    let name: String
}

struct Weather: Codable {
    let temp: Double
    let humidity: Double
}
