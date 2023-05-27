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
        let label = UILabel()
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, yyyy"
        formatter.locale = Locale(identifier: "en_US")
        let dateString = formatter.string(from: date)
        label.text = "Today, \(dateString)"
        label.textColor = .white
        label.font = .systemFont(ofSize: 14)
        return label
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
        let label = UILabel()
        label.text = "Wind Status"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let windLabel1: UILabel = {
        let label = UILabel()
        label.text = "7 mph"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let humidity: UILabel = {
        let label = UILabel()
        label.text = "Humidity"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let humidity1: UILabel = {
        let label = UILabel()
        label.text = "85%"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
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
        let label = UILabel()
        label.text = "Visibility"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let visibility1: UILabel = {
        let label = UILabel()
        label.text = "6.4 miles"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let airPressure: UILabel = {
        let label = UILabel()
        label.text = "Air Pressure"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let airPressure1: UILabel = {
        let label = UILabel()
        label.text = "998 mb"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let weekView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 50
        return view
    }()
    
    let weekLabel : UILabel = {
        let label = UILabel()
        label.text = "The Next 5 days"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    let firstDayView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let firstDayTempLabel : UILabel = {
        let label = UILabel()
        label.text = "31°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let firstDayIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-cloud-snow")
        return image
    }()
    
    let secondDayView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let secondDayTempLabel : UILabel = {
        let label = UILabel()
        label.text = "32°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let secondDayIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-cloud-rain-sun")
        return image
    }()
    
    let thirdDayView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let thirdDayTempLabel : UILabel = {
        let label = UILabel()
        label.text = "33°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let thirdDayIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-cloud-burshaq")
        return image
    }()
    
    let fouthDayView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let fouthDayTempLabel : UILabel = {
        let label = UILabel()
        label.text = "34°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let fouthDayIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-cloud-lightning")
        return image
    }()
    
    let fifthDayView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let fifthDayTempLabel : UILabel = {
        let label = UILabel()
        label.text = "35°C"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let fifthDayIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bg-cloud-2")
        return image
    }()
    
    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    let firstDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "en_US")
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    let secondDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 2, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "en_US")
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    let thirdDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 3, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "en_US")
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    let fourthDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 4, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "en_US")
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    let fifthDayLabel : UILabel = {
        let label = UILabel()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 5, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "en_US")
        label.text = dateFormatter.string(from: tomorrow!)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        return label
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
        
        addSubview(weekView)
        addSubview(weekLabel)
        stackView.addArrangedSubview(firstDayView)
        stackView.addArrangedSubview(secondDayView)
        stackView.addArrangedSubview(thirdDayView)
        stackView.addArrangedSubview(fouthDayView)
        stackView.addArrangedSubview(fifthDayView)
        addSubview(stackView)
        addSubview(firstDayTempLabel)
        addSubview(firstDayIcon)
        addSubview(secondDayTempLabel)
        addSubview(secondDayIcon)
        addSubview(thirdDayTempLabel)
        addSubview(thirdDayIcon)
        addSubview(fouthDayTempLabel)
        addSubview(fouthDayIcon)
        addSubview(fifthDayTempLabel)
        addSubview(fifthDayIcon)
        
        addSubview(firstDayLabel)
        addSubview(secondDayLabel)
        addSubview(thirdDayLabel)
        addSubview(fourthDayLabel)
        addSubview(fifthDayLabel)
    }
    
    func fillData(with data: Weather) {
        
        let temperatureInC = Int(data.main.temp - 273.15)
        
        cityLabel.text = data.name
        temperatureLabel.text = "\(temperatureInC)°C"
        countryLabel.text = "\(data.sys.country)"
        windLabel1.text = "\(data.wind.speed) m/s"
        visibility1.text = "\(data.visibility) meters"
        humidity1.text = "\(data.main.humidity)%"
        airPressure1.text = "\(data.main.pressure) hPa"
    }
    
    func fillWeekData(with data: Forecast) {
        
        let temperaturesPerDay = 6
        
        guard data.list.count >= temperaturesPerDay else {
            print("Insufficient temperature data")
            return
        }
        
        for dayIndex in 0..<data.list.count / temperaturesPerDay {
            
            let startIndex = dayIndex * temperaturesPerDay
            let endIndex = startIndex + temperaturesPerDay
        
            let dayTemperatures = Array(data.list[startIndex..<endIndex])
            let maxTemperature = dayTemperatures.reduce(Double.leastNormalMagnitude) { max($0, $1.main.temp) }
            
//            let weatherDescription: String? = dayTemperatures.first?.weather.description
            
            switch dayIndex {
            case 0:
                // First day
//                firstDayIcon.image = selectImageForWeather(weatherDescription ?? "snow")
                let temperatureInC = Int(maxTemperature - 273.15)
                firstDayTempLabel.text = "\(temperatureInC)°C"
            case 1:
                // Second day
//                secondDayIcon.image = selectImageForWeather(weatherDescription ?? "snow")
                let temperatureInC = Int(maxTemperature - 273.15)
                secondDayTempLabel.text = "\(temperatureInC)°C"
            case 2:
                // Third day
//                thirdDayIcon.image = selectImageForWeather(weatherDescription ?? "snow")
                let temperatureInC = Int(maxTemperature - 273.15)
                thirdDayTempLabel.text = "\(temperatureInC)°C"
            case 3:
                // Fourth day
//                fouthDayIcon.image = selectImageForWeather(weatherDescription ?? "snow")
                let temperatureInC = Int(maxTemperature - 273.15)
                fouthDayTempLabel.text = "\(temperatureInC)°C"
            case 4:
                // Fifth day
//                fifthDayIcon.image = selectImageForWeather(weatherDescription ?? "snow")
                let temperatureInC = Int(maxTemperature - 273.15)
                fifthDayTempLabel.text = "\(temperatureInC)°C"
            default:
                break
            }
        }
    }
    
//    func selectImageForWeather(_ weatherCondition: String) -> UIImage? {
//        switch weatherCondition {
//        case "clear sky":
//            return UIImage(systemName: "sun.max.fill")
//        case "few clouds", "scattered clouds", "broken clouds":
//            return UIImage(systemName: "cloud.sun.fill")
//        case "shower rain", "rain":
//            return UIImage(named: "bg-cloud-rain-sun")
//        case "snow":
//            return UIImage(named: "bg-cloud-snow")
//        case "thunderstorm":
//            return UIImage(named: "bg-cloud-lightning")
//        default:
//            return UIImage(systemName: "sun.max")
//        }
//    }
    
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
        
        weekView.snp.makeConstraints{ make in
            make.bottom.equalToSuperview()
            make.height.equalTo(240)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        weekLabel.snp.makeConstraints{ make in
            make.top.equalTo(weekView.snp.top).offset(50)
            make.leading.equalTo(weekView.snp.leading).offset(12)
        }
        
        stackView.snp.makeConstraints{ make in
            make.bottom.equalTo(weekView.snp.bottom).offset(-60)
            make.height.equalTo(75)
            make.leading.equalTo(weekView.snp.leading).offset(10)
            make.trailing.equalTo(weekView.snp.trailing).offset(-10)
        }
        
        firstDayTempLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(firstDayView.snp.centerX)
            make.bottom.equalTo(firstDayView.snp.bottom).offset(-10)
        }
        
        firstDayIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(firstDayTempLabel.snp.top).offset(-12)
            make.centerX.equalTo(firstDayView.snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
        
        secondDayTempLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(secondDayView.snp.centerX)
            make.bottom.equalTo(secondDayView.snp.bottom).offset(-10)
        }
        
        secondDayIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(secondDayTempLabel.snp.top).offset(-12)
            make.centerX.equalTo(secondDayView.snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
        
        thirdDayTempLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(thirdDayView.snp.centerX)
            make.bottom.equalTo(thirdDayView.snp.bottom).offset(-10)
        }
        
        thirdDayIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(thirdDayTempLabel.snp.top).offset(-12)
            make.centerX.equalTo(thirdDayView.snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
        
        fouthDayTempLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(fouthDayView.snp.centerX)
            make.bottom.equalTo(fouthDayView.snp.bottom).offset(-10)
        }
        
        fouthDayIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(fouthDayTempLabel.snp.top).offset(-12)
            make.centerX.equalTo(fouthDayView.snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
        
        fifthDayTempLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(fifthDayView.snp.centerX)
            make.bottom.equalTo(fifthDayView.snp.bottom).offset(-10)
        }
        
        fifthDayIcon.snp.makeConstraints{ make in
            make.bottom.equalTo(fifthDayTempLabel.snp.top).offset(-12)
            make.centerX.equalTo(fifthDayView.snp.centerX)
            make.width.equalTo(26)
            make.height.equalTo(26)
        }
        
        firstDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(firstDayView.snp.top).offset(-5)
            make.centerX.equalTo(firstDayView.snp.centerX)
        }
        
        secondDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(secondDayView.snp.top).offset(-5)
            make.centerX.equalTo(secondDayView.snp.centerX)
        }
        
        thirdDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(thirdDayView.snp.top).offset(-5)
            make.centerX.equalTo(thirdDayView.snp.centerX)
        }
        
        fourthDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(fouthDayView.snp.top).offset(-5)
            make.centerX.equalTo(fouthDayView.snp.centerX)
        }
        
        fifthDayLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(fifthDayView.snp.top).offset(-5)
            make.centerX.equalTo(fifthDayView.snp.centerX)
        }
    }
}
