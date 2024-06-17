//
//  OutlookView.swift
//  climao app 3
//
//  Created by stenio Lima on 12/06/24.
//

import SwiftUI

struct OutlookView: View {
    var weather: WeatherModel
    var body: some View {
        let graus = Int(weather.main.feels_like) / 10
        VStack{
            header
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white).opacity(0.2)
                
                HStack{
                    VStack(spacing:10){
                        
                        Image(systemName: "sun.max")
                            .font(.system(size: 30))
                        Text(weather.weather[0].main)
                        
                    }.frame(width: 100, alignment: .leading)
                    Text("\(graus)º")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                    
                }
                
                .padding()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white).opacity(0.2)
                HStack(spacing: 25){
                    HStack{
                        Text("Temp min:")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                        Text("\(Int(weather.main.temp_min/10))º")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        
                    }
                    
                    HStack{
                        Text("Temp max:")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                        Text("\(Int(weather.main.temp_max/10))º")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            
                    }
                }
                .padding()
            }
        }
        .fixedSize()
    }
    
    @ViewBuilder
    var header: some View{
        HStack{
            Text("Today")
                .font(.system(size: 50))
                .fontWeight(.black)
            VStack(alignment: .leading){
                Text("in \(weather.name) ")
                    .font(.system(size: 20))
                Text("\(Date().formatted(.dateTime.month().day().hour().minute()))")
                    .font(.system(size: 14))
                    .fontWeight(.light)
            }
            
            
            Spacer()
           
        }.foregroundColor(.white)
    }
    
    
    
}


#Preview {
    OutlookView(weather: previewWeather)
}
