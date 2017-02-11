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

    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedRow:Int?
    let dataProvider = ArticlesDataProvider()
    var articles:ArticlesViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.dataProvider.delegate = self
        self.dataProvider.getAllArticles()
        
        LoadingView.showLoading(viewzinha: self.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

