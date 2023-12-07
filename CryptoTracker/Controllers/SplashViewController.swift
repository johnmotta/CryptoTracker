//

import UIKit

class SplashViewController: UIViewController {

    var rootViewController = UINavigationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = .white
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigateToMainScreen()
        }
    }

    private func setupView() {
        let screen = SplashView()
        view = screen
    }
    
    private func navigateToMainScreen() {
        let splashCoordinator = MainCoordinator(rootViewController: rootViewController)
        splashCoordinator.start()

        guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }

        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
            window.rootViewController = self.rootViewController
        }, completion: nil)
    }


//    private func navigateToMainScreen() {
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
//
//        guard let window = windowScene.windows.first else { return }
//
////        let mainViewController = MainViewController()
////        mainViewController.view.frame = window.bounds
//        let splashCoordinator = MainCoordinator(rootViewController: rootViewController)
//        
//        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
//            //window.rootViewController = mainViewController
//            splashCoordinator.start()
//        }, completion: nil)
//    }
}
