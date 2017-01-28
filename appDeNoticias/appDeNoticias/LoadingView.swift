//
//  Helpers.swift
//  appDeNoticias
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import ALLoadingView

class LoadingView {
    
    static func showLoading (){
        ALLoadingView.manager.blurredBackground = true
        ALLoadingView.manager.showLoadingView(ofType: .messageWithIndicatorAndCancelButton, windowMode: .fullscreen)
        ALLoadingView.manager.messageText = "Mensagem de texto carregando"
        
        
        // remover depois
        ALLoadingView.manager.cancelCallback = {
            ALLoadingView.manager.hideLoadingView(){
                print("botao cancelar")
            }
        }
    
        
    }
    
    static func hideLoading (){
        ALLoadingView.manager.hideLoadingView()
        
    }
    
    
    
}
