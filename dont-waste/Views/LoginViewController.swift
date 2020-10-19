//
//  LoginViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 30/09/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var validationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loginButton.layer.borderWidth = 1
        self.loginButton.layer.borderColor = UIColor.black.cgColor
        
        validationLabel.isHidden = true
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return false
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text == ""{
             mostraAlerta(mensagem: "Preencha todos os campos")
        } else
            if emailTextField.text!.validaEmail && passwordTextField.text!.validaSenha {
                performSegue(withIdentifier: "cadastroViewController", sender: nil)
        }else {
            if emailTextField.text?.validaEmail == false{
                validationLabel.isHidden = false
                validationLabel.text = "Email invalido"
            } else{
                passwordTextField.text?.validaSenha == false
                validationLabel.isHidden = false
                validationLabel.text = "Senha invalida"
            }
        }
       
        
        
    }
    
    
    
    func mostraAlerta(mensagem: String){
    let alert = UIAlertController(title: "Atenção", message: mensagem, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    }
}


    


