//
//  EnvironmentItem.swift
//  BookInventory
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import Foundation

struct EnvironmentItem: Decodable {
    let timeStamp: String
    let updateTimeStamp: String
    let readings: EnvironmentReadings
    
    enum CodingKeys: String, CodingKey {
        case timeStamp = "timestamp"
        case updateTimeStamp = "update_timestamp"
        case readings = "readings"
    }
}
