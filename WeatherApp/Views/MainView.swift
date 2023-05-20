//
//  MainView.swift
//  WeatherApp
//
//  Created by Фараби Иса on 20.05.2023.
//

import UIKit
import SnapKit

class MainView: UIView {

    let gradientLayer = CAGradientLayer()
    
    let searchButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "ic-ant-design_search-outlined"), for: .normal)
        return button
    }()
    
    let dateLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Date"
        cLabel.textColor = .white
        cLabel.font = .systemFont(ofSize: 14)
        
        return cLabel
    }()
    
    let cityLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "City name"
        cLabel.textColor = .white
        cLabel.font = .boldSystemFont(ofSize: 40)
        
        return cLabel
    }()
    
    let countryLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Country name"
        cLabel.textColor = .white
        cLabel.font = .systemFont(ofSize: 20)
        
        return cLabel
    }()
    
    let circleView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 110
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [
            UIColor(red: 48/255, green: 162/255, blue: 197/255, alpha: 1.0).cgColor,
            UIColor(red: 0/255, green: 36/255, blue: 47/255, alpha: 1.0).cgColor
        ]
        layer.addSublayer(gradientLayer)
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        addSubview(searchButton)
        addSubview(dateLabel)
        addSubview(cityLabel)
        addSubview(countryLabel)
        addSubview(circleView)
    }
    
    func setupConstraints(){
        searchButton.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-25)
        }
        
        dateLabel.snp.makeConstraints{ make in
            make.top.equalTo(searchButton).offset(50)
            make.centerX.equalToSuperview()
        }
        
        cityLabel.snp.makeConstraints{ make in
            make.top.equalTo(dateLabel).offset(10)
            make.centerX.equalToSuperview()
        }
        
        countryLabel.snp.makeConstraints{ make in
            make.top.equalTo(cityLabel.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        circleView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(countryLabel.snp.bottomMargin).offset(30)
            make.height.equalTo(220)
            make.width.equalTo(220)
        }
    }
}
