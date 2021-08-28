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

    @IBAction func calculateButton(_ sender: Any) {
        // UITextFieldの型を変換
        let firstNumber = Float(number1TextField.text ?? "") ?? 0
        let secondNumber = Float(number2TextField.text ?? "") ?? 0

        // 各種アラートを作成
        // number1TextFieldが未入力だった場合のアラート
        let number1TextFieldNilAlert = UIAlertController(title: "課題5", message: "割られる数を入力してください", preferredStyle: .alert)
        // number2TextFieldが未入力だった場合のアラート
        let number2TextFieldNilAlert = UIAlertController(title: "課題5", message: "割る数を入力してください", preferredStyle: .alert)
        // number2TextFieldに0が入力された場合のアラート
        let number2TextField0Alert = UIAlertController(title: "課題5", message: "割る数には0を入力しないでください", preferredStyle: .alert)

        // ダイアログに表示させるOKボタンを作成&追加
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        number1TextFieldNilAlert.addAction(ok)
        number2TextFieldNilAlert.addAction(ok)
        number2TextField0Alert.addAction(ok)

        // 入力状況を判断してアラートか計算結果を表示
        if number1TextField.text == "" {
            present(number1TextFieldNilAlert, animated: true, completion: nil)
        } else if number2TextField.text == "" {
            present(number2TextFieldNilAlert, animated: true, completion: nil)
        } else if secondNumber == 0 {
            present(number2TextField0Alert, animated: true, completion: nil)
        } else {
            resultLabel.text = String(firstNumber / secondNumber)
        }
    }


}

