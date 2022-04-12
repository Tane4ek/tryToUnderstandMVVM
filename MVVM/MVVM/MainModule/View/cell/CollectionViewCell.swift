//
//  CollectionViewCell.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 01.04.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reusedId = "CollectionViewCell"
    
    //    MARK: - Init
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = UIColor.green
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
