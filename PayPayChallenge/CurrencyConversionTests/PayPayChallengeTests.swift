//
//  CurrencyConversionTests.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import XCTest
@testable import CurrencyConversion

class PayPayChallengeTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }
    
    func testIsInternetAvailable() {
        if Utilities.isInternetAvailable() {
            XCTAssertTrue(Utilities.isInternetAvailable())
        } else {
            XCTAssertFalse(Utilities.isInternetAvailable())
        }
    }
    
    func testDataCellViewModel() {
        
        let currencyDataViewModel = CurrencyDataViewModel(code: "USD", name: "United States Dollar")
        let symbol = "$"
        XCTAssertEqual("USD", currencyDataViewModel.code)
        XCTAssertEqual("United States Dollar", currencyDataViewModel.name)
        XCTAssertEqual(symbol, currencyDataViewModel.symbol)
    }
}
