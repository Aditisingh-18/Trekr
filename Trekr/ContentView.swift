//
//  ContentView.swift
//  Trekr
//
//  Created by Aditi singh on 09/03/25.
//

import SwiftUI

struct ContentView: View {
    let location :Location
    var body: some View {
        ScrollView{
          
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            Text(location.name)
            
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            Text(location.country)
                .font(.title)
                .foregroundStyle(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
            
        }
        .navigationTitle("Discover")
    }
}


#Preview {
    ContentView(location: Location.example)
}
