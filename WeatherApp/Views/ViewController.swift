//
//  ViewController.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainView.searchButton.addTarget(self, action: #selector(searchTapped), for: .touchUpInside)
        setupViews()
        setupConstraints()
        
    }

    func setupViews() {
        view.addSubview(mainView)
    }
    
    @objc func searchTapped() {
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

