//

import UIKit

class ImageDefault: UIImageView {
    
    init(imageName: String, contentMode: ContentMode) {
        super.init(frame: .zero)
        
        initDefault(imageName, contentMode)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(_ imageName: String,_ contentMode: ContentMode) {
        self.image = UIImage(named: imageName)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = contentMode
    }
}
