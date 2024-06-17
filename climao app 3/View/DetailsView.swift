//
//  DetailsView.swift
//  climao app 3
//
//  Created by stenio Lima on 13/06/24.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        
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
                                .fill(.ultraThinMaterial.opacity(0.2))
                                
                        }
                    Text("Visibility\n16km")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                }
                VStack{
                    Text("💨")
                        .font(.title)
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.ultraThinMaterial.opacity(0.2))
                                
                        }
                    Text("Wind\n14km/h")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                }
                VStack{
                    Text("💧")
                        .font(.title)
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.ultraThinMaterial.opacity(0.2))
                                
                        }
                    Text("Humidity\n80%")
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                }
                
                
            }
            
            .foregroundColor(.white)
        }
       
    }
}

#Preview {
    ContentView()
}
