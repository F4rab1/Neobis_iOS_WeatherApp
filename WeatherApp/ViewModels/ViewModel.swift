//
//  ViewModel.swift
//  WeatherApp
//
//  Created by Фараби Иса on 21.05.2023.
//

import Foundation
import UIKit

protocol WeatherViewModelType {
    
    var didTapSearch: (() -> ())? { get set }
    
    var updateSearch: ((Weather) -> ())? { get set }
    
    func fetchWeatherData()
}

class WeatherViewModel: WeatherViewModelType {
    
    private var weatherService: WeatherService!
    private(set) var weatherData : Weather? {
        didSet {
            self.bindWeatherViewModelToController()
        }
    }
    
    var bindWeatherViewModelToController : (() -> ()) = {}
    
    var updateSearch: ((Weather) -> ())?
    
    lazy var didTapSearch: (() -> ())? = { [weak self] in
        self?.updateSearch?(self?.weatherData ?? Weather(main: Main(temp: 2.0)))
    }
    
    init() {
        self.weatherService = WeatherService()
        fetchWeatherData()
    }
    
    func fetchWeatherData() {
        weatherService.fetchWeather { (weatherData) in
            self.weatherData = weatherData
        }
    }
}
