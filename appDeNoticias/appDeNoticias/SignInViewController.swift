//
//  LoginViewController.swift
//  appDeNoticias
//
//  Created by Sábado on 18/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var backgroundImageNews: UIImageView!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var buttonLayout: UIButton!
    
    var noticia = SignInDataProvider()

    
    @IBAction func buttonLogin(_ sender: AnyObject) {
          
        if (self.login.text?.isEmpty)! || (self.password.text?.isEmpty) == true{
            let alert = UIAlertController(title: "Campo em branco", message: "Por favor insira usuario e/ou senha", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        }else{
            self.noticia.loginUser(email:self.login.text!, password:self.password.text!)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageNews.customizeBackground()
        self.buttonLayout.border()
        self.noticia.delegate = self
        self.navigationController?.isNavigationBarHidden = false

        self.login.delegate = self
        self.password.delegate = self
        self.password.isSecureTextEntry = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if self.login.resignFirstResponder() == true{
            self.password.becomeFirstResponder()
        } else if self.password.resignFirstResponder() == true{
            buttonLogin(true as AnyObject)
        }
        return true
    }

    
}


