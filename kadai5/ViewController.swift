//
//  ViewController.swift
//  kadai5
//
//  Created by 髙橋　竜治 on 2021/08/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButton(_ sender: Any) {
        guard let firstNumber = Float(number1TextField.text ?? "") else {
            presentAlert(message: "割られる数を入力してください")
            return
        }

        guard let secondNumber = Float(number2TextField.text ?? "") else {
            presentAlert(message: "割る数を入力してください")
            return
        }

        guard secondNumber != 0 else {
            presentAlert(message: "割る数には0を入力しないでください")
            return
        }

        resultLabel.text = String(firstNumber / secondNumber)
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)

        alert.addAction(
            UIAlertAction(title: "OK", style: .default, handler: nil)
        )

        present(alert, animated: true, completion: nil)
    }
}
