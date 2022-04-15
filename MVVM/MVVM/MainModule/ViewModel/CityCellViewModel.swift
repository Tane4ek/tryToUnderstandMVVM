//
//  CityCellViewModel.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 05.04.2022.
//

import Foundation

class CityCellViewModel {
    var cityTitle: String
    var pricipitationTitle: String
    var temperatureTitle: String
    var icon: String
    
    required init(weather: Weather) {
        self.cityTitle = weather.city
        
        let preciptionString: String
        switch weather.precipitation {
        case .Sunny: preciptionString = "Sunny"; break
        case .Cloudly: preciptionString = "Cloudly"; break
        case .Rainy: preciptionString = "Rainly"; break
        case .Snowy: preciptionString = "Snowy"; break
        case .Lightning: preciptionString = "Lightning"; break
        }
        self.pricipitationTitle = preciptionString
        self.temperatureTitle = String(describing: weather.temperature) + "\u{00B0}"
        self.icon = weather.icon
    }
    
}
