//
//  WeatherServiceImpl.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 01.04.2022.
//

import Foundation

class WeatherServiceImpl {
    
    var weather: [Weather] = []
}

extension WeatherServiceImpl: WeatherService {
    
    func weatherOfCities() -> [Weather] {
        let moscowWeather = Weather(temperature: 30, city: "Moscow", precipitation: Precipitation.Cloudly, windSpeed: 5, windDirection: WindDirection.East, icon: "cloudy")
        let spbWeather = Weather(temperature: 26, city: "St-Peterburg", precipitation: Precipitation.Rainy, windSpeed: 2, windDirection: WindDirection.North, icon: "rainy")
        let ekbWeather = Weather(temperature: 28, city: "Ekaterinburg", precipitation: Precipitation.Sunny, windSpeed: 3, windDirection: WindDirection.South, icon: "sunny")
        let nskWeather = Weather(temperature: 35, city: "Novosibirsk", precipitation: Precipitation.Sunny, windSpeed: 1, windDirection: WindDirection.East, icon: "sunny")
        let sochiWeather = Weather(temperature: 20, city: "Sochi", precipitation: Precipitation.Rainy, windSpeed: 4, windDirection: WindDirection.South, icon: "rainy")
        weather = [moscowWeather, spbWeather, ekbWeather, nskWeather, sochiWeather]
        print(weather.count)
        return weather
    }
    
}
