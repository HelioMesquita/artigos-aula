//
//  ArticleViewController + ArticleDataProviderProtocol.swift
//  appDeNoticias
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation


extension ArticleViewController: ArticlesDataProviderProtocol{

    internal func fail() {
    }

   
    func success(viewModel: ArticlesViewModel) {
        print(viewModel)
        articles = viewModel
        tableView.reloadData()
        LoadingView.hideLoading(viewzinha: self.view)
    }
    
    
    
}
