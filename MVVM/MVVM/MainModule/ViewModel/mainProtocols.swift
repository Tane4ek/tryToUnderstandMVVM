//
//  mainProtocols.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData)->())? { get set }
    
    func success()
    func error()
}

protocol MainViewControllerProtocol {
    
    func updateViewController()
}
