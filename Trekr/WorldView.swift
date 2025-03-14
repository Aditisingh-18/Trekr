//
//  WorldView.swift
//  Trekr
//
//  Created by Aditi singh on 10/03/25.
//
import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(
        center:
            CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        //$ is a 2 way binding
        Map(coordinateRegion: $region, annotationItems:locations.places){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                    
                }
            }
        }
            .navigationTitle("Locations")
        //$ used for read and write means read and update new value also
        //swiftui store shared valued in the environment
    }
}

#Preview {
    WorldView()
}
