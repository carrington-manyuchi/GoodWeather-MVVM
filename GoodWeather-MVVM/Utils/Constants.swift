//
//  Constants.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation

struct Constants {

    struct Urls {
        
        static func urlForWeatherCity(city: String) -> URL {
            //get the default settings for temp
            // let userDefaults = userDefaults.standard
            // let unit = (userDefaults.value(forKey: "unit) as? String ?? "imperial
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=f8c200300740e9affe7daea59ed32b71")!
        }
    }
}
