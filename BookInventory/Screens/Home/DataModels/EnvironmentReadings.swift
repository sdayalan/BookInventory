//
//  EnvironmentReadings.swift
//  BookInventory
//
//  Created by Siva Dayalan on 15/4/18.
//  Copyright © 2018 Siva Dayalan. All rights reserved.
//

import Foundation

struct EnvironmentReadings: Decodable {
    let o3SubIndex: EnvironmentData
    let pm1024Hourly: EnvironmentData
    let pm10SubIndex: EnvironmentData
    let coSubIndex: EnvironmentData
    let pm2524Hourly: EnvironmentData
    let so2SubIndex: EnvironmentData
    let co8HourMax: CoData
    let no21HourMax: EnvironmentData
    let so224Hourly: EnvironmentData
    let pm25SubIndex: EnvironmentData
    let psi24Hourly: EnvironmentData
    let o38HourMax: EnvironmentData
    
    enum CodingKeys: String, CodingKey {
        case o3SubIndex = "o3_sub_index"
        case pm1024Hourly = "pm10_twenty_four_hourly"
        case pm10SubIndex = "pm10_sub_index"
        case coSubIndex = "co_sub_index"
        case pm2524Hourly = "pm25_twenty_four_hourly"
        case so2SubIndex = "so2_sub_index"
        case co8HourMax = "co_eight_hour_max"
        case no21HourMax = "no2_one_hour_max"
        case so224Hourly = "so2_twenty_four_hourly"
        case pm25SubIndex = "pm25_sub_index"
        case psi24Hourly = "psi_twenty_four_hourly"
        case o38HourMax = "o3_eight_hour_max"
    }
}
