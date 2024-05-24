//
//  ViewController7.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController7: UIViewController {

    @IBOutlet weak var totalmarksTextfield: UITextField!
    @IBOutlet weak var yourmarksTextfield: UITextField!
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOutlet.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let marksText = yourmarksTextfield.text!
        let totalMarksText = totalmarksTextfield.text!
        
        let marks = Float(marksText) ?? 0
        let totalMarks = Float(totalMarksText) ?? 0
        
        let percentage = (marks / totalMarks)*100
        
        percentageLabel.text = "\(percentage)%"
        
    }
    

}
