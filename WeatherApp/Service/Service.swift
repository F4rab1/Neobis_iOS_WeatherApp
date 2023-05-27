//
//  Service.swift
//  WeatherApp
//
//  Created by Фараби Иса on 22.05.2023.
//

import Foundation

class WeatherService {
    let apiKey = "8ecb09e44125900b5afa53789adc08b5"
    
    func fetchWeather(cityName: String, completion: @escaping (Weather) -> ()) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Data Task Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                completion(weather)
            } catch let jsonError {
                print(jsonError)
            }
        }.resume()
    }
    
    func fetchWeekWeather(cityName: String, completion: @escaping (Forecast) -> ()) {
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(cityName)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let forecast = try JSONDecoder().decode(Forecast.self, from: data)
                completion(forecast)
            } catch {
                print("Error decoding forecast data: \(error)")
            }
        }

        task.resume()
    }
}
