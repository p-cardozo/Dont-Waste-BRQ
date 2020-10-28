//
//  TeladeCategoriasViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 25/10/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit

class TeladeCategoriasViewController: UIViewController{

    @IBOutlet weak var voltarBotao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.voltarBotao.layer.borderWidth = 1
        self.voltarBotao.layer.borderColor = UIColor.black.cgColor
        self.fundoGeladeira.layer.cornerRadius = 8
        self.fundoDespensa.layer.cornerRadius = 8
        
        
    }
    
    @IBOutlet weak var fundoGeladeira: UIView!
    @IBOutlet weak var fundoDespensa: UIView!
    
    
    @IBAction func voltarHomeBotao(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func voltarBotao(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
