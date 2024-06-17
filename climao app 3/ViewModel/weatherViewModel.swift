//
//  weatherViewModel.swift
//  climao app 3
//
//  Created by stenio Lima on 14/06/24.
//

import Foundation
import CoreLocation
import SwiftUI

class WeatherViewModel: ObservableObject{
    static let apikey = "188f000997ed3d7f221069bc5c8995b0"
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> WeatherModel{
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(WeatherViewModel.apikey)") else{ fatalError("Missing Error")}
        
        let urlRequest = URLRequest(url: url)
        
        let(data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else{ fatalError("Error fetching weather data")}
        
        let decodedData = try JSONDecoder().decode(WeatherModel.self, from: data)
        
        return decodedData
    }

    
}
