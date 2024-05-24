//
//  ViewController9.swift
//  Master Calculator
//
//  Created by GHEEWALA DHARA on 23/01/24.
//

import UIKit

class ViewController9: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 10
        view3.layer.cornerRadius = 10
        view4.layer.cornerRadius = 10
        
        view1.layer.borderWidth = 1
        view1.layer.borderColor = UIColor.white.cgColor
        view2.layer.borderWidth = 1
        view2.layer.borderColor = UIColor.white.cgColor
        view3.layer.borderWidth = 1
        view3.layer.borderColor = UIColor.white.cgColor
        view4.layer.borderWidth = 1
        view4.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func ButtonAction(_ sender: Any) {
        
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(a, animated: true)
        
    }
    

}
