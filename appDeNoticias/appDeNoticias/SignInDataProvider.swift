//
//  SignInDataProvider.swift
//  appDeNoticias
//
//  Created by Sábado on 18/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

protocol SignInDataProviderProtocol:BaseProtocol {
    
}



class SignInDataProvider{
    
    var delegate:SignInDataProviderProtocol?
    
    func loginUser(email:String,password:String){
    
        FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
            if error == nil{
                self.delegate?.success(viewModel: true)
            } else{
                self.delegate?.fail()
            }
        }
    }

    
}
