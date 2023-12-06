//

import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = UINavigationController(rootViewController: SplashViewController())
    }
}
