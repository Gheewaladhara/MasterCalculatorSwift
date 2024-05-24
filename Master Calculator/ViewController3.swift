//
//  ViewController3.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var investmentTextfield: UITextField!
    @IBOutlet weak var returnTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var investedLabel: UILabel!
    @IBOutlet weak var estReturnsLabel: UILabel!
    @IBOutlet weak var totalValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }  

    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let amount = Float(investmentTextfield.text ?? "0")!
            let returns = Float(returnTextField.text ?? "0")!
            let time = Int(timeTextField.text ?? "0")!

            if time <= 0 {
                return
            }

            let p = amount
            let i = returns / 100.0 / 12.0
            let n = time * 12

            let totalValue = p * (Float((pow((1.0 + i), Float((n))) - 1) / i) * (1+i))
            print("P: ", p, "\ti: ", i, "\tn: ", n, "\nTotal: ", totalValue)

            investedLabel.text = "\(Int(amount) * n)"
            estReturnsLabel.text = String(format: "%.2f", totalValue - ((amount * 12.0) * Float(time)))
            totalValueLabel.text = String(format: "%.2f", totalValue)
    }
}
