//
//  FDC.swift
//  App
//
//  Created by Hani on 2022/04/24.
//

import UIKit
final class FDC: SceneCoordinator {
    var parentCoordinator: SceneCoordinator?
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    var number: Int
    init(navigationController: UINavigationController, number: Int) {
        self.navigationController = navigationController
        self.number = number
    }
    
    func start() {
        let fdVM = FDVM(number: number) //화면 전환 데이터 전달
        let fdVC = FDVC(viewModel: fdVM)
        
        fdVM.popAction = {
            self.parentCoordinator?.remove(childCoordinator: self)
        }
        fdVM.pushAction = { 
            self.moveToFDD()
        }
        //첫화면아니면 pushVC
        navigationController.pushViewController(fdVC, animated: true)
    }
    
    func moveToFDD() { // FirstDetailDetail... 귀차나서.. 다음 화면은 그냥 이렇게 넘어간다고 이해하면됨~
//        let fddc = fddc(navigationController: navigationController, city: city)
//         fddc.parentCoordinator = self
//         childCoordinators.append(fddc)
//         fddc.start()
    }
}
