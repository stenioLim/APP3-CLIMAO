//
//  Home.swift
//  climao app 3
//
//  Created by stenio Lima on 17/06/24.
//

import SwiftUI

struct Home: View {
    var weather: WeatherModel
    var body: some View {
        NavigationStack{
            VStack{
                
               
                ScrollView{
                    VStack {
                        OutlookView(weather: weather)
                            .padding()
                        DetailsView(weather: weather)
  
                    }
                    
                }
            }
            .padding()
            .background(Color("BG").ignoresSafeArea())
            
           
        }
    }
}

#Preview {
    Home(weather: previewWeather)
}
