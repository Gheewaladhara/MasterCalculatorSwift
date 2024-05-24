//
//  ViewController4.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var interestTextField: UITextField!
    @IBOutlet weak var timeTextfield: UITextField!
    
    @IBOutlet weak var interestLabel: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let principal = Int(amountTextField.text ?? "") ?? 0
        let rate = Int(interestTextField.text ?? "") ?? 0
        let time =  Int(timeTextfield.text ?? "") ?? 0
        
        let interestAmount = principal * rate * time / 100
        
        interestLabel.text = "\(interestAmount)"
    }
    

}
