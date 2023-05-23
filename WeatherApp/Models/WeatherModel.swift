//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Фараби Иса on 22.05.2023.
//

import Foundation

struct Weather: Codable {
    let main: Main
}

struct Main: Codable {
    let temp: Double
}
