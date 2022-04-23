//
//  FirstC.swift
//  App
//
//  Created by Hani on 2022/04/24.
//

import UIKit

final class FirstC: SceneCoordinator {
    var parentCoordinator: SceneCoordinator?
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController = .init()) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstVM = FirstVM()
        let firstVC = FirstVC(viewModel: firstVM) // DI
        firstVM.pushAction = { number in
            self.moveToFD(number: number)
        }
        //첫화면은 setVC
        navigationController.setViewControllers([firstVC], animated: false)
    }
    
    func moveToFD(number: Int) {
        let fdC = FDC(navigationController: navigationController, number: number)
        fdC.parentCoordinator = self
        childCoordinators.append(fdC)
        fdC.start()
    }
}
