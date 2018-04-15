//
//  EnvironmentData.swift
//  BookInventory
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import Foundation

struct EnvironmentData: Decodable {
    let east: Int
    let west: Int
    let north: Int
    let south: Int
    let national: Int
    let central: Int
}

struct CoData: Decodable {
    let east: Double
    let west: Double
    let north: Double
    let south: Double
    let national: Double
    let central: Double
}
