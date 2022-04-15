//
//  DetailViewModel.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 12.04.2022.
//

import Foundation

final class DetailViewModel {
    
    var cityTitle: String?
    var windString: String?
    var precipitationString: String?
    var temperatureString: String?
    var icon: String?
    //var model:  Weather?
    
    var weather: Weather
    /*required */init(weather: Weather) {
        self.weather = weather
       /* self.cityTitle = weather.city
        self.temperatureString = String(format: "%0.f%@", weather.temperature, "\u{00B0}")
        
        let windStr: String
        switch weather.windDirection {
        case .North: windStr = "Noth"; break
        case .South: windStr = "South"; break
        case .West: windStr = "West"; break
        case .East: windStr = "East"; break
        }
        self.windString = String(format: "%@ wind, %0.f m/s", windStr, weather.windSpeed)
        
        let preciptionStr: String
        switch weather.precipitation {
        case .Sunny: preciptionStr = "Sunny"; break
        case .Cloudly: preciptionStr = "Cloudly"; break
        case .Rainy: preciptionStr = "Rainly"; break
        case .Snowy: preciptionStr = "Snowy"; break
        case .Lightning: preciptionStr = "Lightning"; break
        }
        self.precipitationString = preciptionStr
        self.icon = weather.icon */
    }
}

extension DetailViewModel: DetailViewModelProtocol {
    func updateWeather(completion: () -> Void) {
        self.cityTitle = weather.city
        self.temperatureString = String(weather.temperature) + "\u{00B0}"
         
         let windStr: String
         switch weather.windDirection {
         case .North: windStr = "Noth"; break
         case .South: windStr = "South"; break
         case .West: windStr = "West"; break
         case .East: windStr = "East"; break
         }
        self.windString = "Wind: " + String(weather.windSpeed) + " m/s " + windStr
         
         let preciptionStr: String
         switch weather.precipitation {
         case .Sunny: preciptionStr = "Sunny"; break
         case .Cloudly: preciptionStr = "Cloudly"; break
         case .Rainy: preciptionStr = "Rainly"; break
         case .Snowy: preciptionStr = "Snowy"; break
         case .Lightning: preciptionStr = "Lightning"; break
         }
         self.precipitationString = preciptionStr
         self.icon = weather.icon
    }
    
    func setCityTitle() -> String {
        return cityTitle ?? ""
    }
    
    func setTemperatureTitle() -> String {
        return temperatureString ?? ""
    }
    
    func setWindTitle() -> String {
        return windString ?? ""
    }
    
    func setPrecipitationTitle() -> String {
        return precipitationString ?? ""
    }
    
    func setIconImage() -> String {
        return icon ?? ""
    }
}
