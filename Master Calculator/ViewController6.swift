//
//  ViewController6.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var amountTextfield: UITextField!
    @IBOutlet weak var interestTextfield: UITextField!
    @IBOutlet weak var yearTextfield: UITextField!
    
    @IBOutlet weak var interestLabel: UILabel!
    @IBOutlet weak var totalinterestLabel: UILabel!
    @IBOutlet weak var payAmountLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let amount = Double(amountTextfield.text!) ?? 0
                let interest = Double(interestTextfield.text!) ?? 0
                var year = Double(yearTextfield.text!) ?? 0
                year = year * 12
                
                let monthlyInterestRate = interest / 12 / 100

                let interestAmount = (amount * monthlyInterestRate * pow(1 + monthlyInterestRate, year)) / (pow(1 + monthlyInterestRate, year) - 1)
                let totalInterest = (interestAmount * year) - amount
                let payableAmount = totalInterest + amount
                
        interestLabel.text = String(format: "%.2f", interestAmount)
        totalinterestLabel.text = String(format: "%.2f", totalInterest)
        payAmountLabel.text = String(format: "%.2f", payableAmount)
 
    }
    
}
