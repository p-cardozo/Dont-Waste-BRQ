//
//  String+Validation.swift
//  dont-waste
//
//  Created by Patricia dos Santos Cardozo on 05/10/20.
//  Copyright © 2020 brq. All rights reserved.
//

import Foundation


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
   
