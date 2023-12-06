//

import UIKit

class SplashView: UIView {
    
    private let cryptoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "cryptoIcon")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CriptoTracker"
        label.textColor = UIColor(named: "mainColor")
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setElements()
        animateCryptoIcon()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func animateCryptoIcon() {
        // Animação de rotação
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = 2 * Double.pi
        rotationAnimation.duration = 2 // Duração da rotação

        // Animação de escala
        let scaleUpAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleUpAnimation.fromValue = 0.5
        scaleUpAnimation.toValue = 1
        scaleUpAnimation.duration = 2.5 // Duração do aumento de escala
        scaleUpAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)

        // Adicionando as animações ao ícone
        cryptoImageView.layer.add(rotationAnimation, forKey: "rotation")
        cryptoImageView.layer.add(scaleUpAnimation, forKey: "scaleUp")
    }

    
    private func setElements() {
        setText()
        setCrypto()
    }
    
    private func setText() {
        addSubview(textLabel)
        
        let textLabelConstraints = [
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(textLabelConstraints)
    }
    
    private func setCrypto() {
        addSubview(cryptoImageView)
        
        let cryptoImageViewConstraints = [
            cryptoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cryptoImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -10),
            cryptoImageView.widthAnchor.constraint(equalToConstant: 100),
            cryptoImageView.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(cryptoImageViewConstraints)
    }
}
