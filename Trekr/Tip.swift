//
//  Tip.swift
//  Trekr
//
//  Created by Aditi singh on 10/03/25.
//

import Foundation

struct Tip : Decodable{
    let text: String
    let children : [Tip]?
    //array can be empty "[]" no tip inside it
    //? used for might be there or might not be there
}
