//
//  Extension.swift
//  appDeNoticias
//
//  Created by Sábado on 18/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func border(){
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    
}

extension UIImageView{
    
    func customizeBackground(){
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
    
}
