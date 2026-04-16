//
//  AppRouter.swift
//  RouterLearnUIKit
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import Foundation
import UIKit

final class AppRouter {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
        
    func setRoot(_ route: Route) {
        let vc = makeViewController(for: route)
        navigationController?.setViewControllers([vc], animated: true)
    }
    
    func push(_ route: Route) {
        let vc = makeViewController(for: route)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func pop() {
        navigationController?.popViewController(animated: true)
    }
    
    func popToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

extension AppRouter {
    
    private func makeViewController(for route: Route) -> UIViewController {
        switch route {
            
        case .Login:
            let vc = LoginViewController()
            vc.router = self
            return vc
            
        case .Home:
            let vc = HomeViewController()
            vc.router = self
            return vc
            
        case .Detail(let id):
            let vc = DetailViewController()
            vc.router = self
            vc.id = id
            return vc
            
        case .Booking(let id):
            let vc = BookingViewController()
            vc.router = self
            vc.id = id
            return vc
        }
    }
    
}
