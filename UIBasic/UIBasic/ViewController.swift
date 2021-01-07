//
//  ViewController.swift
//  UIBasic
//
//  Created by yujeong on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label01: UILabel!
    @IBOutlet weak var Label02: UILabel!
    
    @IBOutlet weak var textField01: UITextField!
    @IBOutlet weak var textField02: UITextField!
    
    @IBOutlet weak var btn01: UIButton!
    
    let numberFormatter:NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 2
        return nf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doConvert(_ sender: UIButton) {
        if let text = textField01.text, let value = Double(text) {
            let fahrenheit = value * 1.8 + 32
            textField02.text = numberFormatter.string(from: NSNumber(value: fahrenheit))
            // F = 1.8 * C + 32
        }
        textField01.resignFirstResponder()
    }

    @IBAction func dismissKeyboard(_ sender:Any){
        textField01.resignFirstResponder()
    }
    
}

