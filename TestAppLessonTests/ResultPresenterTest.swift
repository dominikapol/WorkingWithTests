//
//  ResultPresenterTest.swift
//  TestAppLesson
//
//  Created by Dominika Poleshyck on 8.12.21.
//


import Foundation
import XCTest
@testable import TestAppLesson

class ResultPresenterTests: XCTestCase {
    
    func testFirstTextFieldDidUpdateTextWithNil() {
        let presenter = ResultPresenter()
        
        presenter.firstTextFieldDidUpdateText(text: nil)
        
        XCTAssertNil(presenter.firstDigit)
    }
    
    func testFirstTextFieldDidUpdateTextWithNumber() {
        let presenter = ResultPresenter()
        
        presenter.firstTextFieldDidUpdateText(text: "123")
        
        XCTAssertEqual(presenter.firstDigit, 123)
    }
    
    func testFirstTextFieldDidUpdateTextWithString() {
        let presenter = ResultPresenter()
        
        presenter.firstTextFieldDidUpdateText(text: "asdgasdja")
        
        XCTAssertNil(presenter.firstDigit)
    }
    
    func testSecondTextFieldDidUpdateTextWithNil() {
        let presenter = ResultPresenter()
        
        presenter.secondTextFieldDidUpdateText(text: nil)
        
        XCTAssertNil(presenter.secondDigit)
    }
    
    func testSecondTextFieldDidUpdateTextWithNumber() {
        let presenter = ResultPresenter()
        
        presenter.secondTextFieldDidUpdateText(text: "123")
        
        XCTAssertEqual(presenter.secondDigit, 123)
    }
    
    func testSecondTextFieldDidUpdateTextWithString() {
        let presenter = ResultPresenter()
        
        presenter.secondTextFieldDidUpdateText(text: "asdgasdja")
        
        XCTAssertNil(presenter.secondDigit)
    }
    
    func testShouldChangeTextWithNumber() {
        let presenter = ResultPresenter()
        
        let result = presenter.shouldChangeText(replacementString: "123")
        
        XCTAssertEqual(result, true)
    }
    
    func testShouldChangeTextWithString() {
        let presenter = ResultPresenter()
        
        let result = presenter.shouldChangeText(replacementString: "asdfhksjdf")
        
        XCTAssertEqual(result, false)
    }
    
    func testMakeResult() {
        let presenter = ResultPresenter()
        let mockView = ResultViewMock()
        presenter.view = mockView
        presenter.firstTextFieldDidUpdateText(text: "123")
        presenter.secondTextFieldDidUpdateText(text: "123")
        
        presenter.makeResult()
        
        XCTAssertEqual(mockView.resultText, "246")
    }
}
