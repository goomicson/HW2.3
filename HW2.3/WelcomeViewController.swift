//
//  WelcomeViewController.swift
//  HW2.3
//
//  Created by Сергей on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var enteredLogin: String!
    @IBOutlet var enteredLoginLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredLoginLabel.text = enteredLogin
    }
    }



