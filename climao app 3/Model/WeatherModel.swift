//
//  WeatherModel.swift
//  climao app 3
//
//  Created by stenio Lima on 13/06/24.
//
import Foundation
import SwiftUI
 
struct WeatherModel: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
    
    var weatherIcon: URL {
        let baseURL = "https://openweathermap.org/img/wn/\(icon)@2x.png"
        return URL(string: baseURL)!
    }
}
    
