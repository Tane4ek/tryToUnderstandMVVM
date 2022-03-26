//
//  ViewData.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import Foundation

enum ViewData {
    case initial
    case loading(UserData)
    case success(UserData)
    case failure(UserData)
    
    struct UserData {
        let icon: String?
        let title: String?
        let description: String?
        let phoneNumber: String?
    }
}
