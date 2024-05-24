//
//  ViewController8.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController8: UIViewController {

    @IBOutlet weak var numberTextfield: UITextField!
    @IBOutlet weak var squareTextfield: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateButtonAction(_ sender: UIButton) {
        let inputNumber = Int(numberTextfield.text!) ?? 0
        let number = Int (squareTextfield.text!) ?? 0

        if number == 2 {
            let result = inputNumber * inputNumber
            resultLabel.text = String(result)
        }
        if number == 3 {
            let results = inputNumber * inputNumber * inputNumber
            resultLabel.text = String(results)
        }
        
    }

}
