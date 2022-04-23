//
//  FirstVM.swift
//  App
//
//  Created by Hani on 2022/04/24.
//

import Foundation

final class FirstVM: FirstVMI {
    var pushAction: ((Int) -> ())? // 화면간 데이터 전달 방법
    
    func push() {
        pushAction?(1)
    }
}
