//
//  ViewController.swift
//  MVVM
//
//  Created by Tatiana Luzanova on 26.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private var successButton = UIButton()
    private var errorButton = UIButton()
    
    private var viewModel: MainViewModelProtocol!
    private var testView = TestView()
    
    override func viewDidLoad() {
        viewModel = MainViewModel()
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        createView()
        updateView()
        setupSuccessButton()
        setupErrorButton()
    }
    
    private func createView() {
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    internal func updateView() {
        viewModel.updateViewData = {[weak self] viewData in
            self?.testView.viewData = viewData
        }
    }
    
    private func setupSuccessButton() {
        successButton = setupButtons()
        successButton.setTitle("Success", for: .normal)
        successButton.addTarget(self, action: #selector(successButtonTapped(_:)), for: .touchUpInside)
        successButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        successButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
    }
    
    private func setupErrorButton() {
        errorButton = setupButtons()
        errorButton.setTitle("Error", for: .normal)
        errorButton.addTarget(self, action: #selector(errorButtonTapped(_:)), for: .touchUpInside)
        errorButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        errorButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
    }

  
    
    private func setupButtons() -> UIButton {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }
    
    @objc private func successButtonTapped(_ sender: UIButton) {
        viewModel.success()
        }
    
    @objc private func errorButtonTapped(_ sender: UIButton) {
        viewModel.error()
        }
}

extension MainViewController: MainViewControllerProtocol {
    func updateViewController() {
        
    }
}

