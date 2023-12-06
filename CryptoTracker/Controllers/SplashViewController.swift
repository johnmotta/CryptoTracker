//

import UIKit

class SplashViewController: UIViewController {

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
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }

        guard let window = windowScene.windows.first else { return }

        let mainViewController = MainViewController()
        mainViewController.view.frame = window.bounds

        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
            window.rootViewController = mainViewController
        }, completion: nil)
    }
}
