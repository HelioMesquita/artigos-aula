//
//  extensionSignInDataProviderProtocol.swift
//  appDeNoticias
//
//  Created by Sábado on 18/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import UIKit


extension SignInViewController:SignInDataProviderProtocol{

    func fail(){
        let alert = UIAlertController(title: "Erro de autentiçao", message: "Verifique usuario e senha", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    
    func success<T>(viewModel: T) {

        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "flowNews") as! ArticleViewController
        let navigationController = UINavigationController(rootViewController: secondViewController)
        self.present(navigationController, animated: true, completion: nil)

        self.login.text = ""
        self.password.text = ""
    }

    
}
