//
//  SignUpViewController.swift
//  appDeNoticias
//
//  Created by Sábado on 18/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var password2: UITextField!
    @IBOutlet weak var backgroundImageNews: UIImageView!
    @IBOutlet weak var buttonLayout: UIButton!
    
    @IBAction func buttonGo(_ sender: AnyObject) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageNews.customizeBackground()
        buttonLayout.border()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


