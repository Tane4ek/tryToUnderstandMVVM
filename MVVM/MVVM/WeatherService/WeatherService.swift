//
//  WeatherService.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 01.04.2022.
//

import Foundation

protocol WeatherService {
    
   func weatherOfCities() -> [Weather]
    
}
