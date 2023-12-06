//

import UIKit

class LabelDefault: UILabel {
    
    init(text: String, font: UIFont, textColor: UIColor) {
        super.init(frame: .zero)
        
        self.initDefault(text, font, textColor)
    }
    
    init(text: String, font: UIFont, textColor: UIColor, numberOfLines: Int, textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment

        self.initDefault(text, font, textColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(_ text: String,_ font: UIFont,_ textColor: UIColor) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
        self.textColor = textColor
    }
}
