//
//  RegionTest.swift
//  BookInventoryTests
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import XCTest
@testable import BookInventory

class RegionTest: XCTestCase {
    
    func testValidRegion() {
        let data = """
                        {
                            "name": "west",
                            "label_location": {
                                "latitude": 1.35735,
                                "longitude": 103.7
                            }
                        }
                    """.data(using: .utf8)!
        do {
            let region = try JSONDecoder().decode(Region.self, from: data)
            let name = region.name
            let longitude = region.location.longitude
            let latitude = region.location.latitude
            XCTAssertEqual(name, "west")
            XCTAssertEqual(longitude, 103.7, accuracy: 0.000000001)
            XCTAssertEqual(latitude, 1.35735, accuracy: 0.000000001)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testInvalidRegion() {
        let data = """
                        {
                            "name": 1,
                            "label_location": {
                                "latitude": 1.35735,
                                "longitude": 103.7
                            }
                        }
                    """.data(using: .utf8)!
        XCTAssertThrowsError(try JSONDecoder().decode(Region.self, from: data))
    }
    
}
