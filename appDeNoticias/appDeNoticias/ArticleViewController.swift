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


class ArticleViewController: UIViewController{

    let urlString = "https://newsapi.org/v1/articles?source=techcrunch&apiKey=0126aaf314494c16bb346a34f514d770"
    
    let dataProvider = ArticlesDataProvider()
 
    
    
    @IBAction func acaoBotao(_ sender: AnyObject) {
        LoadingView.showLoading(viewzinha: self.view)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataProvider.delegate = self
        self.dataProvider.getAllArticles()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

