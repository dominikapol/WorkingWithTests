//
//  ResultService.swift
//  TestAppLesson
//
//  Created by Dominika Poleshyck on 8.12.21.
//

import Foundation


class ResultService {
    func result(firstDigit: Int?, secondDigit: Int?) -> Int {
        guard let firstDigitInt = firstDigit else { return 0 }
             guard let secondDigitInt = secondDigit else { return 0 }
        return firstDigitInt + secondDigitInt
    }
}
