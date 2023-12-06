//

import UIKit

class ButtonDefault: UIButton {
    
    init(title: String, backgroundColor: UIColor = .white){
        super.init(frame: .zero)
        
        initDefault(title, backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(_ title: String, _ backgroundColor: UIColor) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.setTitleColor(UIColor(named: "lightBlue"), for: .normal)
        self.setTitleColor(.systemBackground, for: .highlighted)
        self.backgroundColor = backgroundColor
        self.layer.borderColor = UIColor(named: "lightBlue")?.cgColor
        self.layer.borderWidth = 3
        self.layer.cornerRadius = 10
    }
}
