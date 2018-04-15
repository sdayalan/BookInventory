//
//  Region.swift
//  BookInventory
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import Foundation

struct Location: Decodable {
    let longitude: Double
    let latitude: Double
}

struct Region: Decodable {
    let name: String
    let location: Location
    
    enum CodingKeys: String, CodingKey {
        case name
        case location = "label_location"
    }
}
