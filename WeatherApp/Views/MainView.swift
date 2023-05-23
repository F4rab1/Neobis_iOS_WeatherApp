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
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "ic-ant-design_search-outlined"), for: .normal)
        return button
    }()
    
    let dateLabel: UILabel = {
        let Label = UILabel()
        Label.text = "Date"
        Label.textColor = .white
        Label.font = .systemFont(ofSize: 14)
        return Label
    }()
    
    let cityLabel: UILabel = {
        let Label = UILabel()
        Label.text = "City name"
        Label.textColor = .white
        Label.font = .boldSystemFont(ofSize: 40)
        return Label
    }()
    
    let countryLabel: UILabel = {
        let Label = UILabel()
        Label.text = "Country name"
        Label.textColor = .white
        Label.font = .systemFont(ofSize: 20)
        return Label
    }()
    
    let circleView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 110
        return view
    }()
    
    let weatherView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-rainy")
        return image
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "10°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 90, weight: .light)
        return label
    }()
    
    let descStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    let firstStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = 4
        return stack
    }()
    
    let windLabel: UILabel = {
        let Label = UILabel()
        Label.text = "Wind Status"
        Label.textColor = .white
        Label.font = .boldSystemFont(ofSize: 14)
        return Label
    }()
    
    let windLabel1: UILabel = {
        let Label = UILabel()
        Label.text = "7 mph"
        Label.textColor = .white
        Label.font = UIFont.systemFont(ofSize: 20)
        return Label
    }()
    
    let humidity: UILabel = {
        let Label = UILabel()
        Label.text = "Humidity"
        Label.textColor = .white
        Label.font = .boldSystemFont(ofSize: 14)
        return Label
    }()
    
    let humidity1: UILabel = {
        let Label = UILabel()
        Label.text = "85%"
        Label.textColor = .white
        Label.font = UIFont.systemFont(ofSize: 20)
        return Label
    }()
    
    let secondStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    
    let visibility: UILabel = {
        let Label = UILabel()
        Label.text = "Visibility"
        Label.textColor = .white
        Label.font = .boldSystemFont(ofSize: 14)
        return Label
    }()
    
    let visibility1: UILabel = {
        let Label = UILabel()
        Label.text = "6.4 miles"
        Label.textColor = .white
        Label.font = UIFont.systemFont(ofSize: 20)
        return Label
    }()
    
    let airPressure: UILabel = {
        let Label = UILabel()
        Label.text = "Air Pressure"
        Label.textColor = .white
        Label.font = .boldSystemFont(ofSize: 14)
        return Label
    }()
    
    let airPressure1: UILabel = {
        let Label = UILabel()
        Label.text = "998 mb"
        Label.textColor = .white
        Label.font = UIFont.systemFont(ofSize: 20)
        return Label
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
        addSubview(weatherView)
        addSubview(temperatureLabel)
        
        firstStack.addArrangedSubview(windLabel)
        firstStack.addArrangedSubview(windLabel1)
        firstStack.addArrangedSubview(humidity)
        firstStack.addArrangedSubview(humidity1)
        addSubview(firstStack)
        
        secondStack.addArrangedSubview(visibility)
        secondStack.addArrangedSubview(visibility1)
        secondStack.addArrangedSubview(airPressure)
        secondStack.addArrangedSubview(airPressure1)
        addSubview(secondStack)
        
        descStackView.addArrangedSubview(firstStack)
        descStackView.addArrangedSubview(secondStack)
        addSubview(descStackView)
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
            make.top.equalTo(cityLabel.snp.bottom).offset(-5)
            make.centerX.equalToSuperview()
        }
        
        circleView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(countryLabel.snp.bottomMargin).offset(30)
            make.height.equalTo(220)
            make.width.equalTo(220)
        }
        
        weatherView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(circleView.snp.top).offset(5)
        }
        
        temperatureLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(circleView.snp.centerY)
        }
        
        descStackView.snp.makeConstraints { make in
            make.top.equalTo(circleView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(120)
        }
    }
}
