//
//  ResultViewController.swift
//  TestAppLesson
//
//  Created Dominika Poleshyck on 8.12.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit


class ResultViewController: UIViewController, ResultViewProtocol {
    
    @IBOutlet private weak var firstDigitTextField: UITextField!
    @IBOutlet private weak var secondDigitTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
	var presenter: ResultPresenterProtocol = ResultPresenter()

	override func viewDidLoad() {
        super.viewDidLoad()

        presenter.view = self
        presenter.viewDidLoad()
    }
    
    @IBAction private func equalsButtonPressed() {
        presenter.makeResult()
    }
    
    @IBAction private func firstDigitTextFieldChangeEditing() {
        let text = firstDigitTextField.text
        presenter.firstTextFieldDidUpdateText(text: text)
    }
    @IBAction private func secondDigitTextFieldChangeEditing() {
        let text = secondDigitTextField.text
        presenter.secondTextFieldDidUpdateText(text: text)
    }
    
    func updateResultLabel(with resultText: String) {
        resultLabel.text = resultText
    }
}
    


extension ResultViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
