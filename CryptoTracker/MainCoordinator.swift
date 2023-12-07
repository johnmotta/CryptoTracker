//

import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    lazy var mainViewController: MainViewController = {
        let vc = MainViewController()
        return vc
    }()
    
    func start() {
        let viewController = MainViewController()
        
        viewController.onLoginTap = {
            self.showLogin()
        }
        
        self.rootViewController.pushViewController(viewController, animated: true)
    }
    
    private func showLogin() {
        let coordinator = HomeCoordinator(navigationController: rootViewController)
        coordinator.start()
    }
}
