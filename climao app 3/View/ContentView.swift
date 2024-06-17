//
//  ContentView.swift
//  climao app 3
//
//  Created by stenio Lima on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationMananger()
    var weatherManager = WeatherViewModel()
    @State var weather: WeatherModel?
    
    var body: some View {
        
            VStack{
                
                if let location = locationManager.location {
                    if let weather = weather {
                        Home(weather: weather)
                    }else {
                        LoadingView()
                            .task {
                                do{
                                  weather =  try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                }catch{
                                    print("error getting weather: \(error)")
                                }
                            }
                    }
            }else {
                if locationManager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
          
            
            
        
        }
    

    }
}

#Preview {
    ContentView()
}
