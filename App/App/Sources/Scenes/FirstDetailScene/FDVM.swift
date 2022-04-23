//
//  FDVM.swift
//  App
//
//  Created by Hani on 2022/04/24.
//

import Foundation

final class FDVM: FDVMI {
    var pushAction: (() -> ())?
    var popAction: (() -> ())?
    var number: Int
    
    init(number: Int) {
        self.number = number 
    }
    func pop() {
        popAction?()
    }
    
    func push() {
        pushAction?()
    }
}
