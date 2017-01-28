////
////  ArtigosRouters.swift
////  appDeNoticias
////
////  Created by Sábado on 21/01/17.
////  Copyright © 2017 Sábado. All rights reserved.
////
//
//import Foundation
//import Alamofire
//
//
//enum ArtigoRouter:URLRequestConvertible{
//    
//    
//    public func asURLRequest() throws -> URLRequest{
//        let url = URL(string: "baseURL")!
//        var urlRequest = URLRequest(url: (url.appendingPathComponent(path)))
//        
//        urlRequest.httpMethod = method.rawValue
//        
//        switch self {
//        case .getArtigos():
//            return try Alamofire.JSONEncoding.default.encode(urlRequest)
//        }
//        
//    }
//    
//    
//    case getArtigos()
//
//    
//    var method: Alamofire.HTTPMethod{
//        switch self {
//        case .getArtigos():
//            return .get
//        }
//        
//    }
//    
//    var path:String{
//            switch self {
//            case .getArtigos():
//                return ""
//            }
//        }
//    
//
//
//
//
//
//}
//
//
