//
//  ConverterWithTestUnitTests.swift
//  ConverterWithTestUnitTests
//
//  Created by Anne Victoria Batista Auzier on 02/10/23.
//

import XCTest
@testable import ConverterWithTestUnit

final class ConverterWithTestUnitTests: XCTestCase {
    
    var application: Converters?

    override func setUpWithError() throws {
        application = Converters()
    }

    override func tearDownWithError() throws {
        application = nil
    }
    
    func testIntegerConvert() {
        let actual = application?.convertRealToUSD(value: "10")
        let expected = "$2.00"
        
        XCTAssertEqual(actual, expected, "This values aren't equals.")
    }
    
    func testZeroInput() {
        let actual = application?.convertRealToUSD(value: "0")
        let expected = "Please, insert a valid value."
        
        XCTAssertEqual(actual, expected)
    }
    
    func testValueTooBigInput() {
        let actual = application?.convertRealToUSD(value: "999999999")
        let expected = "This value is too big to be converted."
        
        XCTAssertEqual(actual, expected)
    }
}
