//

import UIKit

class MainViewController: UIViewController {
    
    var rootViewController = UINavigationController()
    
    var onLoginTap: (() -> Void)?
    
    lazy var mainView: MainView = {
        let vc = MainView()
        vc.onContinueButtonTapped = { [weak self] in
            self?.onLoginTap?()
        }
        return vc
    }()
    
    override func loadView() {
        self.view = mainView
    }
}
