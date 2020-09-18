//
//  ProximoAcessoViewController.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 11/09/20.
//  Copyright © 2020 brq. All rights reserved.
//

import UIKit


class ProximoAcessoViewController: UIViewController{

    @IBOutlet weak var botaoProximo: UIButton!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var senhaTextField: UITextField!
    @IBOutlet weak var dicaLabel: UILabel!
    
    
    override func viewDidLoad() {
        dicaLabel.isHidden = true
        super.viewDidLoad()
        self.botaoProximo.layer.borderWidth = 1
        self.botaoProximo.layer.borderColor = UIColor.black.cgColor
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tap)
    }
    
    var timer: Timer?
    
  //botao casa - para retornar para a pagina home
    @IBAction func botaoCasa(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   //botao dica - colocar dica da senha
    @IBAction func botaoTooltip(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.dicaLabel.isHidden = false
            }
        timer = Timer.scheduledTimer (timeInterval: 5.0, target: self, selector: #selector (timerAction), userInfo: nil, repeats: false)
    }
    
    @objc func timerAction () {
        dicaLabel.isHidden = true
        }
    
    @IBAction func botaoProximo(_ sender: Any) {
        if emailTextField.text == "" || senhaTextField.text == ""{
             mostraAlerta(mensagem: "Preencha todos os campos")
        } else
            if emailTextField.text!.validaEmail && senhaTextField.text!.validaSenha {
            print("tudo certo")
        }else {
           mostraAlerta(mensagem: "Algum campo esta inválido")
        }
    }
    
    // popup alerta caso os campos estiverem vazios ou invalidos
    func mostraAlerta(mensagem: String){
    let alert = UIAlertController(title: "Atenção", message: mensagem, preferredStyle: UIAlertController.Style.alert)
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


    
   




