//

import UIKit

class MainViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mainColor")
        setupView()
    }
    
    private func setupView() {
        let screen = MainView()
        view = screen
    }
}
