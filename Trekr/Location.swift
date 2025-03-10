//
//  Location.swift
//  Trekr
//
//  Created by Aditi singh on 09/03/25.
//

import Foundation

struct Location: Decodable , Identifiable {
    let id :Int
    let name: String
    let country : String
    let description : String
    let more : String
    let latitude : Double
    let longitude : Double
    let heroPicture : String
    let advisory : String
    
   static let example=Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit", more: "more text here ", latitude: 35.652, longitude: -83.5070, heroPicture: "smokies", advisory: "Be aware of bears")
}
