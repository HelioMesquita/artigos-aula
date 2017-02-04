//
//  ArtigosRouters.swift
//  appDeNoticias
//
//  Created by Sábado on 21/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import Alamofire

//cria o caminho para fazer o request
enum ArticlesRouter:URLRequestConvertible{
    
    case getAllArticles(idUser: String)
    
    var method: Alamofire.HTTPMethod{
        switch self {
        case .getAllArticles:
            return .get
        }
    }
    
    var path:String{
        switch self {
        case .getAllArticles:
            return API.path
        }
    }
    
        func asURLRequest() throws -> URLRequest{
        
        // base é somente o www.site.com.br
        var url = URL(string: API.baseURL)!
        
        // parte posterior www.site.com.br/user
        // /user seria no caso anterior
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        switch self {
        case .getAllArticles(let idUser):
            
            var parameters = String(describing: urlRequest)
            parameters = parameters.replacingOccurrences(of: "$$", with: idUser)
            parameters = parameters.replacingOccurrences(of: "%3F", with: "?")
            url = URL(string: parameters)!
            urlRequest = URLRequest(url: url)
            
            // seta o lugar do enum
            urlRequest.httpMethod = method.rawValue
            
            return try Alamofire.JSONEncoding.default.encode(urlRequest)
        }
        
    }

    
}



