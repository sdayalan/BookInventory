//
//  CoDataTest.swift
//  BookInventoryTests
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import XCTest
@testable import BookInventory

class CoDataTest: XCTestCase {
    
    func testValidCoData() {
        let data = """
                    {
                        "west": 0.65,
                        "national": 0.23,
                        "east": 0.54,
                        "central": 0.45,
                        "south": 0.62,
                        "north": 0.23
                    }
                    """.data(using: .utf8)!
        
        do {
            let _ = try JSONDecoder().decode(CoData.self, from: data)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testInValidEnvironmentData() {
        let data = """
                    {
                        
                    }
                    """.data(using: .utf8)!
        XCTAssertThrowsError(try JSONDecoder().decode(CoData.self, from: data))
    }
}
