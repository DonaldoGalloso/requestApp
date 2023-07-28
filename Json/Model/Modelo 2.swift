//
//  Modelo 2.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 05/05/23.
//

import Foundation

struct Modelo2 : Decodable {
    var data : [UserList]
}

struct UserDetail: Decodable {
    var data : UserList
}

struct UserList: Decodable {
    var id: Int
    var first_name: String
    var email : String
    var avatar : String
}
