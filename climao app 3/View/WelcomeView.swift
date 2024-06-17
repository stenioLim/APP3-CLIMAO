//
//  SwiftUIView.swift
//  climao app 3
//
//  Created by stenio Lima on 17/06/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationMananger
    
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack(spacing: 20){
                    Text("Welcome to the Weather App")
                        .font(.title3)
                        .fontWeight(.bold)
                    Text("Please share your corrent location to get the weather in your area")
                        .padding()
                }
                .multilineTextAlignment(.center)
                
                LocationButton(.sendCurrentLocation){
                    locationManager.requestLocation()
                }
                .cornerRadius(30)
                .symbolVariant(.fill)
                .foregroundColor(.white)
            }
            
        }
    }
}

#Preview {
    WelcomeView()
}
