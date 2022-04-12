//
//  CollectionView.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 05.04.2022.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    
    private enum Paddings {
        static let insideInset: CGFloat = 5
        static let outsideInset: CGFloat = 10
    }
    
    static let reusedId = "CityCollectionViewCell"
 
    private var cityLabel = UILabel(frame: .zero)
    private var pricipitationLabel = UILabel(frame: .zero)
    private var temperatureLabel = UILabel(frame: .zero)
    private var icon = UIImageView(frame: .zero)
    
    weak var viewModel: CityCellViewModel! {
        didSet {
            self.cityLabel.text = viewModel.cityTitle
            self.pricipitationLabel.text = viewModel.pricipitationTitle
            self.temperatureLabel.text = viewModel.temperatureTitle
            self.icon.image = UIImage(named: viewModel.icon)
        }
    }
    
//    MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUICell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//  MARK: - Setup UI
    private func setupUICell() {
        backgroundColor = .green
        setupCityLabel()
        setupPricipitationLabel()
        setupTempetatureLabel()
        setupIcon()
        setupLayoutCell()
    }
    
    private func setupCityLabel() {
        cityLabel = labelStyle(size: 24)
        icon.addSubview(cityLabel)
    }
    
    private func setupPricipitationLabel() {
        pricipitationLabel = labelStyle(size: 10)
        icon.addSubview(pricipitationLabel)
    }
    
    private func setupTempetatureLabel() {
        temperatureLabel = labelStyle(size: 40)
        icon.addSubview(temperatureLabel)
    }
    
    private func labelStyle(size: CGFloat) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func setupIcon() {
        icon.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(icon)
    }
    
    
//    MARK: - Layout
    private func setupLayoutCell() {
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: topAnchor, constant: Paddings.outsideInset),
            cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Paddings.outsideInset),
            
            pricipitationLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: Paddings.insideInset),
            pricipitationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Paddings.outsideInset),
            pricipitationLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Paddings.outsideInset),
            
            temperatureLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Paddings.outsideInset),
            temperatureLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            icon.topAnchor.constraint(equalTo: topAnchor),
            icon.bottomAnchor.constraint(equalTo: bottomAnchor),
            icon.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
