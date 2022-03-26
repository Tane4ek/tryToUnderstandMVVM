//
//  MainViewModel.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

final class MainViewModel: MainViewModelProtocol {
   
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    public func error() {
        updateViewData?(.failure(ViewData.UserData(icon: "failure",
                                                         title: "Error",
                                                         description: "Not user",
                                                         phoneNumber: nil)))
    }
    
    public func success() {
        updateViewData?(.success(ViewData.UserData(icon: "success",
                                                             title: "Success",
                                                             description: "Good",
                                                             phoneNumber: nil)))
    }
}
