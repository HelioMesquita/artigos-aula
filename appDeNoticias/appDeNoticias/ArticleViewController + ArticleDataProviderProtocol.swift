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

   
    func success<T>(viewModel: T) {
        print(viewModel)
        guard let currentVM = viewModel as? ArticlesViewModel else {return}
        articles = currentVM
        tableView.reloadData()
        LoadingView.hideLoading(viewzinha: self.view)
    }
    
   
    
}
