//
//  Modelo1.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 01/05/23.
//

import Foundation

struct Modelo1: Decodable {
    var id: Int
    var name: String
    var email: String
    var address: Address
}

struct Address : Decodable {
    var street : String
    var geo : Geo
}

struct Geo: Decodable {
    var lat : String
    
}

