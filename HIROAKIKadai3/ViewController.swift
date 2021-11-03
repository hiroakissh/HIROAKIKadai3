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
    @IBOutlet weak var sign1Switch: UISwitch!
    @IBOutlet weak var sign2Switch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func num1SymbolSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            UserDefaults.standard.set(true, forKey: "num1Symbol")
        } else {
            UserDefaults.standard.set(false, forKey: "num1Symbol")
        }
    }

    @IBAction private func num2SymbolSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            UserDefaults.standard.set(true, forKey: "num2Symbol")
        } else {
            UserDefaults.standard.set(false, forKey: "num2Symbol")
        }
    }

    @IBAction private func calcButton(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        let num1Symbol = UserDefaults.standard.bool(forKey: "num1Symbol")
        let num2Symbol = UserDefaults.standard.bool(forKey: "num2Symbol")

        let signNum1: Int
        let signNum2: Int
    }
}
