//
//  ContentView.swift
//  climao app 3
//
//  Created by stenio Lima on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationMananger()
    
    var body: some View {
        NavigationView{
            VStack{
                
                if let location = locationManager.location {
                    Text("Your locatio are : \(location.longitude), \(location.latitude)")
                }else {
                    if locationManager.isLoading{
                        ProgressView()
                    }else{
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
                
                
                
            } 
          
            
            
            NavigationStack{
                VStack{
                    
                    HStack{
                        Button{
                            
                        }label: {
                            Image(systemName: "line.3.horizontal")
                            
                        }
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        Spacer()
                    }.padding(.bottom)
                    ScrollView{
                        VStack {
                            OutlookView()
                                .padding()
                            DetailsView()
      
                        }
                        
                    }
                }
                .padding()
               
            }
        }
        

    }
}

#Preview {
    ContentView()
}
