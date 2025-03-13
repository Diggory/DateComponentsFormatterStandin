//
//  DateComponentsFormatterStandinTests.swift
//  DateComponentsFormatterStandin
//
//  Created by Diggory Laycock on 13/03/2025.
//

//  Uses the new SwiftTesting package.
//  Built-in to Swift 6 and later

//  https://developer.apple.com/documentation/testing


import Foundation
import DateComponentsFormatterStandin
import Testing


struct FormatterTests {

    struct FormatTestParameterPair {
        let duration: TimeInterval
        let expectedFormattedResult: String
    }

    var params = [FormatTestParameterPair]()

    init() {
        //  Sub-minute
        params.append(.init(duration: 30, expectedFormattedResult: "30 seconds"))
        params.append(.init(duration: -30, expectedFormattedResult: "-30 seconds"))
        //  One minute exactly
        params.append(.init(duration: 60, expectedFormattedResult: "1 minute"))
        params.append(.init(duration: -60, expectedFormattedResult: "-1 minute"))
        //  Over One minute
        params.append(.init(duration: 90, expectedFormattedResult: "1 minute, 30 seconds"))
        params.append(.init(duration: -90, expectedFormattedResult: "-1 minute, 30 seconds"))
        //  One Hour
        params.append(.init(duration: 3_600, expectedFormattedResult: "1 hour"))
        params.append(.init(duration: -3_600, expectedFormattedResult: "-1 hour"))
        //  Two Hours exactly
        params.append(.init(duration: 7_200, expectedFormattedResult: "2 hours"))
        params.append(.init(duration: -7_200, expectedFormattedResult: "-2 hours"))
        //  Just over one hour
        params.append(.init(duration: 3_612, expectedFormattedResult: "1 hour, 12 seconds"))
        params.append(.init(duration: -3_612, expectedFormattedResult: "-1 hour, 12 seconds"))
        //  One Hour, One Min, One Sec
        params.append(.init(duration: 3_661, expectedFormattedResult: "1 hour, 1 minute, 1 second"))
        params.append(.init(duration: -3_661, expectedFormattedResult: "-1 hour, 1 minute, 1 second"))
        //  Two Hours, Two Mins, Two Secs
        params.append(.init(duration: 7_322.0, expectedFormattedResult: "2 hours, 2 minutes, 2 seconds"))
        params.append(.init(duration: -7_322.0, expectedFormattedResult: "-2 hours, 2 minutes, 2 seconds"))
        //  One day exactly
        params.append(.init(duration: 86_400, expectedFormattedResult: "1 day"))
        params.append(.init(duration: -86_400, expectedFormattedResult: "-1 day"))
        //  Two Days, Two Hours, Two Mins, Two Secs
        params.append(.init(duration: 180_122, expectedFormattedResult: "2 days, 2 hours, 2 minutes, 2 seconds"))
        params.append(.init(duration: -180_122, expectedFormattedResult: "-2 days, 2 hours, 2 minutes, 2 seconds"))
    }

    /// Tests that the formats come out right for various durations.
    @Test("Formatting durations")
    func checkFormatTimes() {
        let formatter = DateComponentsFormatterStandin()
        for param in params {
            #expect(param.expectedFormattedResult == formatter.string(from: param.duration))
        }
    }
}

