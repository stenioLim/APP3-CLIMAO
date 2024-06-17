//
//  weatherViewModel.swift
//  climao app 3
//
//  Created by stenio Lima on 14/06/24.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {
    
    @Published var weather: [WeatherModel] = []
    
    static let apikey = "188f000997ed3d7f221069bc5c8995b0"
    
    

    
}
