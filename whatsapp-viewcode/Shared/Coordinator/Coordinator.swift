//
//  Coordinator.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 07/07/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
