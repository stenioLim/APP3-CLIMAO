//
//  OutlookView.swift
//  climao app 3
//
//  Created by stenio Lima on 12/06/24.
//

import SwiftUI

struct OutlookView: View {
    
    var body: some View {
        VStack{
            header
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.ultraThinMaterial).opacity(0.3)
                HStack{
                    reading(time: "08:00", icon: "🌦️", temp: "7º")
                    reading(time: "08:00", icon: "🌦️", temp: "7º")
                    reading(time: "08:00", icon: "🌦️", temp: "7º")
                    reading(time: "08:00", icon: "🌦️", temp: "7º")
                    reading(time: "08:00", icon: "🌦️", temp: "7º")
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
                .font(.title)
                .fontWeight(.black)
            
            
            Spacer()
            NavigationLink{
                WeeklyView()
            }label: {
                HStack{
                    Text("Next 7 Day")
                    Image(systemName: "chevron.right")
                }
                .fontWeight(.semibold)
            }
        }.foregroundColor(.white)
    }
    
    func reading(time: String, icon: String, temp: String) -> some View {
        VStack{
            Text(time)
            Text(icon)
            Text(temp)
        }
        .foregroundStyle(.white )
        .padding(5)
    }
    
}


#Preview {
    ContentView()
}
