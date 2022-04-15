//
//  DetailViewModelProtocol.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 15.04.2022.
//

import Foundation

protocol DetailViewModelProtocol {
   
    func updateWeather(completion:() -> Void)
    
    func setCityTitle() -> String 

    func setTemperatureTitle() -> String
    
    func setWindTitle() -> String
    
    func setPrecipitationTitle() -> String
    
    func setIconImage() -> String 
}
