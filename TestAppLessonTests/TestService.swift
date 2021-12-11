//
//  TestUI.swift
//  TestAppLesson
//
//  Created by Dominika Poleshyck on 8.12.21.
//


import Foundation
import XCTest
@testable import TestAppLesson

class ResultServiceTests: XCTestCase {
    func testBothParametersNil() {
        let resultService = ResultService()
        
        let testResult = resultService.result(firstDigit: nil, secondDigit: nil)
        
        XCTAssertNil(testResult)
    }
    
    func testFirstParameterNilSecondParameterValue() {
        let resultService = ResultService()
        
        let testResult = resultService.result(firstDigit: nil, secondDigit: 123)
        
        XCTAssertNil(testResult)
    }
    
    func testFirstParameterValueSecondParameterNil() {
        let resultService = ResultService()
        
        let testResult = resultService.result(firstDigit: 123, secondDigit: nil)
        
        XCTAssertNil(testResult)
    }
    
    func testBothParametersValue() {
        let resultService = ResultService()
        
        let testResult = resultService.result(firstDigit: 123, secondDigit: 123)
        
        XCTAssertEqual(testResult, 246)
    }
}
