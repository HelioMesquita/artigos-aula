//
//  ArticleViewController.swift
//  appDeNoticias
//
//  Created by Sábado on 21/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import UIKit
import Alamofire
import ASProgressHud


class ArticleViewController: UIViewController {

    var timer = Timer()
    let urlString = "https://newsapi.org/v1/articles?source=techcrunch&apiKey=0126aaf314494c16bb346a34f514d770"

    
    @IBAction func acaoBotao(_ sender: AnyObject) {
        LoadingView.showLoading(viewzinha: self.view)
        
        timer =  Timer.scheduledTimer(timeInterval: 2,
                                      target: self,
                                      selector: #selector(self.esconde),
                                      userInfo: nil,
                                      repeats: false)
    }
    
    func esconde(){
        LoadingView.hideLoading(viewzinha: self.view)
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

