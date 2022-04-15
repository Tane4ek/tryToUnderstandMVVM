//
//  DetailViewController.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 12.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

   private var viewModel: DetailViewModelProtocol
    
    init(viewModel: DetailViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var testLabel = UILabel(frame: .zero)
    
    var cityLabel = UILabel(frame: .zero)
    var windLabel = UILabel(frame: .zero)
    var pricipitationLabel = UILabel(frame: .zero)
    var temperatureLabel = UILabel(frame: .zero)
    var icon = UIImageView(frame: .zero)
    
 /*   weak var viewModel: DetailViewModel! {
        didSet {
            self.cityLabel.text = viewModel.cityTitle
            self.pricipitationLabel.text = viewModel.precipitationString
            self.temperatureLabel.text = viewModel.temperatureString
            self.windLabel.text = viewModel.windString
            self.icon.image = UIImage(named: viewModel.icon)
        }
    } */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .yellow
        updateView()
        setupNavigationBar()
        setupCityLbel()
        setupWindLabel()
        setupPricipitationLabel()
        setupTemperatureLabel()
        setupIcon()
        setupLayout()
    }
    
    private func updateView() {
        viewModel.updateWeather(completion: {
            //self.cityLabel.text = viewModel.setCityTitle()
       //     self.pricipitationLabel.text = viewModel.precipitationString
         //   self.temperatureLabel.text = viewModel.temperatureString
          //  self.windLabel.text = viewModel.windString
          //  self.icon.image = UIImage(named: viewModel.icon)
        })
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
    }
    
    private func setupCityLbel() {
        cityLabel = labelStyle(size: 40)
        cityLabel.text = viewModel.setCityTitle()
        icon.addSubview(cityLabel)
    }
    
    private func setupWindLabel() {
        windLabel = labelStyle(size: 20)
        windLabel.text = viewModel.setWindTitle()
        icon.addSubview(windLabel)
    }
    
    private func setupPricipitationLabel() {
        pricipitationLabel = labelStyle(size: 20)
        pricipitationLabel.text = viewModel.setPrecipitationTitle()
        icon.addSubview(pricipitationLabel)
    }
    
    private func setupTemperatureLabel() {
        temperatureLabel = labelStyle(size: 60)
        temperatureLabel.text = viewModel.setTemperatureTitle()
        icon.addSubview(temperatureLabel)
    }
    
    private func setupIcon() {
        icon.contentMode = .scaleAspectFill
        icon.clipsToBounds = true
        icon.image = UIImage(named: viewModel.setIconImage())
        icon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(icon)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            icon.topAnchor.constraint(equalTo: view.topAnchor),
            icon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            icon.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            icon.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            temperatureLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            cityLabel.bottomAnchor.constraint(equalTo: temperatureLabel.topAnchor, constant: -10),
            cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            pricipitationLabel.topAnchor.constraint(equalTo: temperatureLabel.bottomAnchor, constant: 10),
            pricipitationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            windLabel.topAnchor.constraint(equalTo: pricipitationLabel.bottomAnchor, constant: 10),
            windLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    private func labelStyle(size: CGFloat) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
