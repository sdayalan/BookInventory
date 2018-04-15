//
//  EnvironmentDataTest.swift
//  BookInventoryTests
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import XCTest
@testable import BookInventory

class EnvironmentDataTest: XCTestCase {
    
    func testValidEnvironmentData() {
        let data = """
                    {
                        "west": 12,
                        "national": 20,
                        "east": 20,
                        "central": 12,
                        "south": 18,
                        "north": 17
                    }
                    """.data(using: .utf8)!
        
        do {
            let _ = try JSONDecoder().decode(EnvironmentData.self, from: data)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testInValidEnvironmentData() {
        let data = """
                    {
                        "west": 12,
                        "south": 18,
                        "north": 17
                    }
                    """.data(using: .utf8)!
        XCTAssertThrowsError(try JSONDecoder().decode(EnvironmentData.self, from: data))
    }
}
