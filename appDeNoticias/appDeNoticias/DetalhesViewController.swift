//
//  DetalhesViewController.swift
//  appDeNoticias
//
//  Created by Sábado on 11/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var textViewDetalhes: UITextView!
    
    var descriptioN:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textViewDetalhes.text = descriptioN
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func recebeNoticia(articleDescription:String){
        self.descriptioN = articleDescription
    }
}
