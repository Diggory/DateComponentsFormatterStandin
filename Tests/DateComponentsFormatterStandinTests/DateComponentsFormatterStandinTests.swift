import XCTest
@testable import DateComponentsFormatterStandin

final class DateComponentsFormatterStandinTests: XCTestCase {
	
	
	func testSubMinute() {
		let testDuration = 30.0
		let expectedResult = "30 seconds"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusSubMinute() {
        let testDuration = -30.0
        let expectedResult = "-30 seconds"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }

	func testOneMinuteExactly() {
		let testDuration = 60.0
		let expectedResult = "1 minute"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusOneMinuteExactly() {
        let testDuration = -60.0
        let expectedResult = "-1 minute"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testOverMinute() {
		let testDuration = 90.0
		let expectedResult = "1 minute, 30 seconds"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusOverMinute() {
        let testDuration = -90.0
        let expectedResult = "-1 minute, 30 seconds"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testOneHourExactly() {
		let testDuration = 3_600.0
		let expectedResult = "1 hour"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusOneHourExactly() {
        let testDuration = -3_600.0
        let expectedResult = "-1 hour"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testTwoHoursExactly() {
		let testDuration = 7_200.0
		let expectedResult = "2 hours"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusTwoHoursExactly() {
        let testDuration = -7_200.0
        let expectedResult = "-2 hours"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testJustOverOneHour() {
		let testDuration = 3_612.0
		let expectedResult = "1 hour, 12 seconds"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusJustOverOneHour() {
        let testDuration = -3_612.0
        let expectedResult = "-1 hour, 12 seconds"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testOneHourOneMinOneSec() {
		let testDuration = 3_661.0
		let expectedResult = "1 hour, 1 minute, 1 second"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusOneHourOneMinOneSec() {
        let testDuration = -3_661.0
        let expectedResult = "-1 hour, 1 minute, 1 second"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testTwoHoursTwoMinsTwoSecs() {
		let testDuration = 7_322.0
		let expectedResult = "2 hours, 2 minutes, 2 seconds"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusTwoHoursTwoMinsTwoSecs() {
        let testDuration = -7_322.0
        let expectedResult = "-2 hours, 2 minutes, 2 seconds"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testOneDayExactly() {
		let testDuration = 86_400.0
		let expectedResult = "1 day"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusOneDayExactly() {
        let testDuration = -86_400.0
        let expectedResult = "-1 day"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


	func testTwoDaysTwoHoursTwoMinsTwoSecs() {
		let testDuration = 180_122.0
		let expectedResult = "2 days, 2 hours, 2 minutes, 2 seconds"
		
		let formatter = DateComponentsFormatterStandin()
		XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
	}

    func testMinusTwoDaysTwoHoursTwoMinsTwoSecs() {
        let testDuration = -180_122.0
        let expectedResult = "-2 days, 2 hours, 2 minutes, 2 seconds"

        let formatter = DateComponentsFormatterStandin()
        XCTAssertEqual(formatter.string(from: testDuration) , expectedResult)
    }


}
