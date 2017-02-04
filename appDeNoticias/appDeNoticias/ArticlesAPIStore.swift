//
//  ArticlesAPIStore.swift
//  appDeNoticias
//
//  Created by Sábado on 04/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import Alamofire


class ArticlesAPIStore: ArticlesStore{
    var error = NSError()
    
    
    
    func getAllArticles(userID: String, _ completion: @escaping (Account?, NSError?) -> Void) {
    
        
        do{
            // pega a informacao do router ja formulada certinho
            // neste caso ele formata o texto para a urlRequest
            let urlRequest = try ArticlesRouter.getAllArticles(idUser: userID).asURLRequest()
            
            Alamofire.request(urlRequest)
            
            .responseJSON(completionHandler: { (response) in
                guard let responseLoad = response.response else {return}
                
                switch (responseLoad.statusCode){
                case 200:
                    // verifica se tem erro e se nao tiver parse normal
                    guard let json = response.result.value as? [String:Any] else {completion(nil,self.error);
                        return}
                    
                    let accountLoad = Account(object: json)
                    completion(accountLoad,nil)
                    
                    break
                
                default:
                    completion(nil, response.error as? NSError)
                    
                }
                
            })
        }catch{
        
        }
        
        
    }
    
    
    
    
    
}
