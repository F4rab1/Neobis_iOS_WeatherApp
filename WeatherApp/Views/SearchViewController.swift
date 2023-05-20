//
//  SearchViewController.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    let searchView = SearchView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.closeButton.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
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
}
