//
//  Locations.swift
//  Trekr
//
//  Created by Aditi singh on 09/03/25.
//

import Foundation

class Locations: ObservableObject {
    //now ObservableObject is req bcz we add @StateObject to keep it live
    //req location to perform oprations
    let places: [Location]
    //let can never change property
    
    var primary : Location {
        places[0]
    }
    //var can change
    //places[0] reads from the 0th(indexing ) place like other coding languages
    
    init(){
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode( [Location].self, from: data)
        
    }
}
