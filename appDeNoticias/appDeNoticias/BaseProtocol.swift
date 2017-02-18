//
//  BaseProtocol.swift
//  appDeNoticias
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation


protocol BaseProtocol {
    func success<T> (viewModel: T)

    func fail ()
    

}
