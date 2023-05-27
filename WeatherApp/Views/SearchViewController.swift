//
//  SearchViewController.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    weak var mainViewController: ViewController?
    let searchView = SearchView()
    let weatherViewModel: WeatherViewModelType
    
    init(vm: WeatherViewModelType, mainViewController: ViewController) {
        weatherViewModel = vm
        self.mainViewController = mainViewController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.closeButton.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        searchView.searchButton.addTarget(self, action: #selector(searchTapped), for: .touchUpInside)
        setupViews()
        setupConstriant()
    }
    
    func setupViews() {
        view.addSubview(searchView)
    }
    
    @objc func closeTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupConstriant() {
        searchView.snp.makeConstraints{make in
            make.edges.equalToSuperview()
        }
    }
    
    @objc func searchTapped() {
        guard let cityName = searchView.searchField.text else {
            return
        }
        
        weatherViewModel.fetchWeatherData(cityName: cityName)
        dismiss(animated: true) { [weak self] in
            self?.mainViewController?.weatherViewModel.didTapSearch?()
        }
    }
}
