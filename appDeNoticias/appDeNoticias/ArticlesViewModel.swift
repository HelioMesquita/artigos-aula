//
//  ArticleViewModel.swift
//  appDeNoticias
//
//  Created by Sábado on 04/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation

class ArticlesViewModel{
    // fica todas as regras de negocio
    private var arrayArticles: [Articles]?
    private var currentArticle: Articles?
    
    
    var author:String{
        return (self.currentArticle?.author)!
    }
    var title:String{
        return (self.currentArticle?.title)!
    }
    var description:String{
        return (self.currentArticle?.descriptionValue)!
    }
    var url:String{
        return (self.currentArticle?.url)!
    }
    var urlToImage:String{
        return (self.currentArticle?.urlToImage)!
    }

    var publishedAt:String{
        return (self.currentArticle?.publishedAt)!
    }

    
    var numberOfRows:Int{
        // é igual a um if let porem é possivel acessar a variavel de fora
        guard let count = self.arrayArticles?.count else {return 0}
        return count
    }
    
    
    init(arrayArticleLoad:[Articles]) {
        self.arrayArticles = arrayArticleLoad
    }
    
    
    func loadArticle (indice:Int){
        self.currentArticle = self.arrayArticles?[indice]
        
    }
    
    
}
