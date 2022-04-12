//
//  ViewData.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

struct Weather {
    var temperature: Int
    var city: String
    var precipitation: Precipitation
    var windSpeed: Int
    var windDirection: WindDirection
    var icon: String
}

enum WindDirection {
    case North, South, West, East
}

enum Precipitation {
    case Cloudly, Rainy, Snowy, Lightning, Sunny
}





