//
//  ResultPresenter.swift
//  TestAppLesson
//
//  Created Dominika Poleshyck on 8.12.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: View -
protocol ResultViewProtocol: class {
    func updateResultLabel(with resultText: String)
}

// MARK: Presenter -
protocol ResultPresenterProtocol{
    var view: ResultViewProtocol? { get set }
    
    func viewDidLoad()
    func firstTextFieldDidUpdateText(text: String?)
    func secondTextFieldDidUpdateText(text: String?)
    func shouldChangeText(replacementString string: String) -> Bool
    func makeResult()
}

class ResultPresenter: ResultPresenterProtocol {
    
    private(set) var firstDigit: Int?  // (set) - для чтения публичная, для значения приватная
    private(set) var secondDigit: Int?
    private let resultService = ResultService()
   
    weak var view: ResultViewProtocol?

    func viewDidLoad() {

    }
    
    func firstTextFieldDidUpdateText(text: String?) {
        guard let text = text,
              let digit = Int(text) else {
            return
        }

        firstDigit = digit
    }
    
    func secondTextFieldDidUpdateText(text: String?) {
        guard let text = text,
              let digit = Int(text) else {
            return
        }

        secondDigit = digit
    }
    
    func shouldChangeText(replacementString string: String) -> Bool {
        return Int(string) != nil || string.isEmpty
    }
    
    func makeResult() {
        guard let firstDigit = firstDigit,
              let secondDigit = secondDigit else {
            return
        }
        
        let result = resultService.result(
            firstDigit: firstDigit,
            secondDigit: secondDigit
        )
        
        let resultText = "\(result)"
        
        view?.updateResultLabel(with: resultText)
    }
}
