//
//  mainProtocols.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

protocol MainViewModelProtocol {
   
    func updateWeather(completion:() -> Void)
    
    func numberOfCities() -> Int
    
    func cellViewModel(index: Int) -> CityCellViewModel?
}
