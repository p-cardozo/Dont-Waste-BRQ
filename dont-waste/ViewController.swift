//
//  ViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 11/09/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewPrimeiroAcesso: UIView!
    @IBOutlet weak var viewLogin: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewPrimeiroAcesso.layer.borderWidth = 1
        self.viewPrimeiroAcesso.layer.borderColor = UIColor.black.cgColor
        self.viewLogin.layer.borderWidth = 1
        self.viewLogin.layer.borderColor = UIColor.black.cgColor
        
    }


}

