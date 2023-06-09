//
//  String+Etensions.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation



extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
