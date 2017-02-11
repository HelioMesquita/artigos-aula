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

    
    var selectedRow:Int?
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let urlString = "https://newsapi.org/v1/articles?source=techcrunch&apiKey=0126aaf314494c16bb346a34f514d770"
    
    let dataProvider = ArticlesDataProvider()
    var articles:ArticlesViewModel?
    
    
    @IBAction func acaoBotao(_ sender: AnyObject) {
        LoadingView.showLoading(viewzinha: self.view)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.dataProvider.delegate = self
        self.dataProvider.getAllArticles()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

