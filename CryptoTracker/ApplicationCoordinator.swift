//

import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let splashCoordinator = SplashCoordinator()
        splashCoordinator.start()
        
        window.rootViewController = splashCoordinator.rootViewController
    }
}
