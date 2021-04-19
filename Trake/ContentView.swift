//
//  ContentView.swift
//  Trake
//
//  Created by MAC on 17/4/2021.
//

import SwiftUI

struct ContentView: View {
    let location:Location
    var body: some View {
        
        ScrollView{
        VStack{
       
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you Know")
                .font(.title3)
                .bold()
                .padding(.top)
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle(location.name)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    var locations = Locations()
    static var previews: some View {
            TabView{
        NavigationView{
            ContentView(location: Locations().primary)
        }
             .tabItem {
                            Image(systemName: "airplane.circle.fill")
                            Text("Discover")
                        }
                
                
                NavigationView {
                                    WorldView()
                                }
                                .tabItem {
                                    Image(systemName: "star.fill")
                                    Text("Locations")
                                }
            }
        
    }
}
