//
//  AddWeatherViewModel.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void ) {
        
        let weatherURL = Constants.Urls.urlForWeatherCity(city: city)
        
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        Webservice().load(resource: weatherResource) { (result) in
            if let weatherResource = result {
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
}
