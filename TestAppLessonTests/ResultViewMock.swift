//
//  ResultViewMok.swift
//  TestAppLessonTests
//
//  Created by Dominika Poleshyck on 9.12.21.
//

import Foundation
@testable import TestAppLesson

class ResultViewMock: ResultViewProtocol {
    var resultText: String? = nil
    
    func updateResultLabel(with resultText: String) {
        self.resultText = resultText
    }
}
