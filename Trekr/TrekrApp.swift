//
//  TrekrApp.swift
//  Trekr
//
//  Created by Aditi singh on 09/03/25.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations=Locations()
    //@StateObject keep it live always
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}

