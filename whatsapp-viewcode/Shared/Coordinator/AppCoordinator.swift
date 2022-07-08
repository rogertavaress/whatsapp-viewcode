//
//  AppCoordinator.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 07/07/22.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginScreen = LoginViewController()
        navigationController.pushViewController(loginScreen, animated: false)
    }
}
