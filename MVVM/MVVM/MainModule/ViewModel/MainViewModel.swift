//
//  MainViewModel.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

final class MainViewModel {
    
    var weatherService: WeatherService
    private var cellsArray = [CityCellViewModel]()
    private var models: [Weather] = []
    var detailViewModel: DetailViewModel?
    
    init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
}

extension MainViewModel: MainViewModelProtocol {
    
    
    func updateWeather(completion: () -> Void) {
        cellsArray.removeAll()
        models = weatherService.weatherOfCities()
        cellsArray = models.map {CityCellViewModel(weather: $0)}
            completion()
    }
    
    func cellViewModel(index: Int) -> CityCellViewModel? {
        return cellsArray[index]
    }
    
    func numberOfCities() -> Int {
        return cellsArray.count
    }
    
    func didSelectRow(index: Int) -> DetailViewModel? {
        if cellsArray.isEmpty { return nil }
        detailViewModel = DetailViewModel(weather: models[index])
        return detailViewModel
    }
}
