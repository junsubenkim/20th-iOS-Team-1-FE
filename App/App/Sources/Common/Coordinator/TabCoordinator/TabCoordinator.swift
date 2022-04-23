//
//  TabCoordinator.swift
//  App
//
//  Created by Hani on 2022/04/23.
//

import UIKit

final class TabCoordinator: Coordinator {
    private let window: UIWindow?
    
    internal var childCoordinators = [Coordinator]()
    
    init(window: UIWindow?) {
        self.window = window
        
        window?.makeKeyAndVisible()
    }
    
    internal func start() {
        let firstC = FirstC()
        childCoordinators.append(firstC)
        firstC.start()
        let firstNC = firstC.navigationController
        firstNC.tabBarItem = UITabBarItem(title: "1111", image: nil, selectedImage: nil)
        
        let secondVC = SecondVC() // 그냥 탭바 확인하라구 넣어둠
        secondVC.tabBarItem = UITabBarItem(title: "2222", image: nil, selectedImage: nil)
        
        let navigationControllers = [firstNC, secondVC]
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = navigationControllers
        
        window?.rootViewController = tabBarController
    }
}
