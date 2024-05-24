//
//  ViewController5.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var priceTextfield: UITextField!
    @IBOutlet weak var discountTextfield: UITextField!
    @IBOutlet weak var priceafterDiscountLabel: UILabel!
    @IBOutlet weak var saveamountLabel: UILabel!
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func countButtonAction(_ sender: UIButton) {
        
        let price = Float(priceTextfield.text ?? "") ?? 0
        let discount = Float(discountTextfield.text ?? "") ?? 0
        
        let savedAmount = price * discount / 100
        let discountPrice = price - savedAmount
        
        priceafterDiscountLabel.text = "\(discountPrice)"
        saveamountLabel.text = "\(savedAmount)"

        
    }
    
}
