//
//  WeatherListViewModel.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation



class WeatherListViewModel {
    
}


class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    
    var temperature: Double {
        return weather.main.temp
    }
    
}
