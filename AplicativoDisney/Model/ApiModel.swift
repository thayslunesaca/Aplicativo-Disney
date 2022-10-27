//
//  ApiModel.swift
//  AplicativoDisney
//
//  Created by Lunes on 21/10/22.
//

import Foundation

struct Princess: Decodable {
    let data: [Dataum]
}

struct Dataum: Decodable {
    let name: String
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
            case name
            case imageURL = "imageUrl"
            
        }
}



