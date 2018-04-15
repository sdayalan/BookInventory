//
//  PSIData.swift
//  BookInventory
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import Foundation

struct PSIData: Decodable {
    let regionMetaData: [Region]
    let items: [EnvironmentItem]
    let aqiInfo: APIInfo
    
    enum CodingKeys: String, CodingKey {
        case regionMetaData = "region_metadata"
        case items = "items"
        case aqiInfo = "api_info"
    }
}

struct APIInfo: Decodable {
    let status: String
}
