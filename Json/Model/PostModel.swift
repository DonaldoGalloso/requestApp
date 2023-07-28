//
//  PostModel.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 23/04/23.
//

import Foundation

// DEcodable es solo traer respuestas a nuestra estructura
// Encodable es más bien hacer una petición o mandar algo
// Codable hace ambos

struct PostModel: Decodable {
    var token : String
}
