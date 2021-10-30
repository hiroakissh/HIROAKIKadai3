//
//  ViewController.swift
//  HIROAKIKadai3
//
//  Created by HiroakiSaito on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var num1Label: UILabel!
    @IBOutlet private weak var num2Label: UILabel!
    @IBOutlet private weak var totalLabel: UILabel!
    @IBOutlet private weak var sign1Switch: UISwitch!
    @IBOutlet private weak var sign2Switch: UISwitch!

    @IBAction private func calcButton(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        let signedNum1: Int
        if sign1Switch.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Int
        if sign2Switch.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }

        num1Label.text = String(signedNum1)
        num2Label.text = String(signedNum2)
        totalLabel.text = String(signedNum1 + signedNum2)
    }
}
