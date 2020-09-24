//
//  ViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 11/09/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var botaoPrimeiroAcesso: UIButton!
    @IBOutlet weak var botaoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.botaoPrimeiroAcesso.layer.borderWidth = 1
        self.botaoPrimeiroAcesso.layer.borderColor = UIColor.black.cgColor
        self.botaoLogin.layer.borderWidth = 1
        self.botaoLogin.layer.borderColor = UIColor.black.cgColor
        
    }


}

