//
//  ProximoAcessoViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 11/09/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit


class ProximoAcessoViewController: UIViewController {

    @IBOutlet weak var botaoProximo: UIButton!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.botaoProximo.layer.borderWidth = 1
        self.botaoProximo.layer.borderColor = UIColor.black.cgColor
    }
    
  //botao casa - para retornar para a pagina home
    @IBAction func botaoCasa(_ sender: Any) {
    }
    
   //botao dica - colocar dica da senha
    @IBAction func botaoTooltip(_ sender: Any) {
    }
    
    
    @IBAction func botaoProximo(_ sender: Any) {
        if emailTextField.text == "" || senhaTextField.text == ""{
             mostraAlerta()
        } else if emailTextField.text!.validaEmail && senhaTextField.text!.validaSenha {
            print("tudo certo")
        }else {
           print("algum campo esta errado")
        }
    }
    
    
    // popup alerta caso os campos estiverem vazios
    func mostraAlerta(){
    let alert = UIAlertController(title: "Atenção", message: "Preencha todos os campos", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    }
}

// validacao email e senha
extension String {
    
    var validaEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    var validaSenha: Bool {
        let passwordValidation = NSPredicate(format: "SELF MATCHES %@ ", "^(?=.*[0-9]).{6,8}$")
        return passwordValidation.evaluate(with: self)
       
    }
}




