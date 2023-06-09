//
//  Double+Extensions.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import Foundation


extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
