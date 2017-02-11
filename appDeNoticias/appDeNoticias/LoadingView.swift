//
//  Helpers.swift
//  appDeNoticias
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import ALLoadingView
import ASProgressHud

class LoadingView {
    
    // camada abstrata para facilitar a implementacao e substituicao se necessaaria
        
    static func showLoading (viewzinha:UIView){
        
        ASProgressHud.showHUDAddedTo(viewzinha, animated: true, type: .default)

//        let SwiftTimer = Timer.scheduledTimer(timeInterval: 5, target:self, selector: Selector("hideLoading"), userInfo: nil, repeats: false)
        
    }
    
    static func hideLoading (viewzinha:UIView){
        ASProgressHud.hideHUDForView(viewzinha, animated: true)
    }
    
    
    
}
