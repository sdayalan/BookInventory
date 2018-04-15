//
//  EnvironmentItemTest.swift
//  BookInventoryTests
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import XCTest
@testable import BookInventory

class EnvironmentItemTest: XCTestCase {
    
    func testValidEnvironmentItem() {
        let data = """
        {
            "timestamp": "2018-04-15T14:00:00+08:00",
            "update_timestamp": "2018-04-15T14:06:18+08:00",
            "readings": {
                "o3_sub_index": {
                    "west": 12,
                    "national": 20,
                    "east": 20,
                    "central": 12,
                    "south": 18,
                    "north": 17
                },
                "pm10_twenty_four_hourly": {
                    "west": 24,
                    "national": 45,
                    "east": 34,
                    "central": 45,
                    "south": 36,
                    "north": 30
                },
                "pm10_sub_index": {
                    "west": 24,
                    "national": 45,
                    "east": 34,
                    "central": 45,
                    "south": 36,
                    "north": 30
                },
                "co_sub_index": {
                    "west": 7,
                    "national": 7,
                    "east": 5,
                    "central": 6,
                    "south": 7,
                    "north": 6
                },
                "pm25_twenty_four_hourly": {
                    "west": 14,
                    "national": 22,
                    "east": 19,
                    "central": 22,
                    "south": 19,
                    "north": 19
                },
                "so2_sub_index": {
                    "west": 6,
                    "national": 8,
                    "east": 8,
                    "central": 6,
                    "south": 8,
                    "north": 4
                },
                "co_eight_hour_max": {
                    "west": 0.65,
                    "national": 0.73,
                    "east": 0.5,
                    "central": 0.58,
                    "south": 0.73,
                    "north": 0.63
                },
                "no2_one_hour_max": {
                    "west": 8,
                    "national": 30,
                    "east": 30,
                    "central": 27,
                    "south": 26,
                    "north": 10
                },
                "so2_twenty_four_hourly": {
                    "west": 9,
                    "national": 13,
                    "east": 12,
                    "central": 9,
                    "south": 13,
                    "north": 6
                },
                "pm25_sub_index": {
                    "west": 53,
                    "national": 63,
                    "east": 59,
                    "central": 63,
                    "south": 59,
                    "north": 59
                },
                "psi_twenty_four_hourly": {
                    "west": 53,
                    "national": 63,
                    "east": 59,
                    "central": 63,
                    "south": 59,
                    "north": 59
                },
                "o3_eight_hour_max": {
                    "west": 28,
                    "national": 46,
                    "east": 46,
                    "central": 28,
                    "south": 44,
                    "north": 41
                }
            }
        }
        """.data(using: .utf8)!
        
        do {
            let _ = try JSONDecoder().decode(EnvironmentItem.self, from: data)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
}
