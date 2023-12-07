//

import UIKit

class SplashCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var splashViewController: SplashViewController = {
        let vc = SplashViewController()
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([splashViewController], animated: false)
    }
}
