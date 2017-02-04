//
//  ArticlesDataProvider.swift
//  appDeNoticias
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation

protocol ArticlesDataProviderProtocol: BaseProtocol {
    
    
    
}


class ArticlesDataProvider {
    
    var delegate: ArticlesDataProviderProtocol?
    
    func  getAllArticles (){
        // dentro da camada articles api
        ArticlesAPIStore().getAllArticles(userID: "0126aaf314494c16bb346a34f514d770") { (account, error) in
            
            print(account)
            print(error)
         
            if error != nil{
             self.delegate?.fail()
            } else{
                
            let articleViewModel = ArticlesViewModel(arrayArticleLoad: (account?.articles!)!)
                self.delegate?.success(viewModel: articleViewModel)
            }
            
        }
        
    }
    
    
    
    
}


