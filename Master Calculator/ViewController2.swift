//
//  ViewController2.swift
//  Master Calculator
//
//  Created by IMAC2 on 21/12/23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 10
        view3.layer.cornerRadius = 10
        view4.layer.cornerRadius = 10
        view5.layer.cornerRadius = 10
        view6.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func mutualFundActionBtton(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func interestButtonAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func discountButtonAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func emiButttonAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func resultButtonAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(a, animated: true)
    }
    
    
    @IBAction func squareButtonAction(_ sender: UIButton) {
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(a, animated: true)
    }
    
}
