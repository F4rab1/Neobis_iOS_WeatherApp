//
//  ViewController.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var weatherViewModel: WeatherViewModelType!
    let mainView = MainView()
    
    var weatherModel: Weather?
    
    init(vm: WeatherViewModelType) {
        weatherViewModel = vm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weatherViewModel.updateSearch = { [weak self] weather in
            self?.weatherModel = weather
        }
        
        mainView.searchButton.addTarget(self, action: #selector(searchTapped), for: .touchUpInside)
        setupViews()
        setupConstraints()
        
    }

    func setupViews() {
        view.addSubview(mainView)
    }
    
    @objc func searchTapped() {
        weatherViewModel.didTapSearch?()
        let vc = SearchViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    func setupConstraints() {
        mainView.snp.makeConstraints{make in
            make.edges.equalToSuperview()
        }
    }
}

