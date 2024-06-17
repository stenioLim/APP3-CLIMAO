//
//  DetailsView.swift
//  climao app 3
//
//  Created by stenio Lima on 13/06/24.
//

import SwiftUI

struct DetailsView: View {
    var weather: WeatherModel
   

    var body: some View {
        
        let visibilidade = Int(weather.visibility) / 1000
        
        VStack{
            HStack{
                Text("Details")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                    
                Spacer()
                    
            }.padding(.horizontal)
            
            HStack(spacing:40){
               
               
                VStack{
                    
                    Text("👁️")
                        .font(.title)
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.2))
                                
                        }
                    Text("Visibility \n\(visibilidade) km")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    
                }
                VStack{
                    Text("💨")
                        .font(.title)
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.2))
                                
                        }
                    Text("Wind\n\(weather.wind.speed.roundDuble())mph")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                }
                VStack{
                    Text("💧")
                        .font(.title)
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.2))
                                
                        }
                    Text("Humidity\n\(weather.main.humidity.roundDuble())%")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                }
                
                
            }
            
            .foregroundColor(.white)
        }
       
    }
}

#Preview {
    DetailsView(weather: previewWeather)
}
