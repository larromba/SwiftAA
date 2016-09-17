//
//  JulianDayTest.swift
//  SwiftAA
//
//  Created by Cédric Foellmi on 17/09/2016.
//  Copyright © 2016 onekiloparsec. All rights reserved.
//

import XCTest

class JulianDayTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDate1ToJulianDay() {
        var components = DateComponents()
        components.year = 2016
        components.month = 9
        components.day = 17
        let date = Calendar(identifier: .gregorian).date(from: components)
        XCTAssertEqual(date?.julianDay(), 2457648.500000)
    }

    func testDate2ToJulianDay() {
        var components = DateComponents()
        components.year = 1916
        components.month = 9
        components.day = 17
        components.hour = 2
        components.minute = 3
        components.second = 4
        components.nanosecond = 500000
        let date = Calendar(identifier: .gregorian).date(from: components)!
        XCTAssertEqualWithAccuracy(date.julianDay(), 2421123.585469, accuracy: 0.000001)
    }

    func testJulianDayToDateComponents() {
    }

}