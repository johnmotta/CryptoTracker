//

import UIKit

class MainView: UIView {
    
    var onContinueButtonTapped: (() -> Void)?
    
    private let cryptoImageView = ImageDefault(imageName: "cryptoIcon", contentMode: .scaleAspectFit)
    
    private let titleLabel = LabelDefault(text: "Crypto Tracker", font: .systemFont(ofSize: 25, weight: .semibold), textColor: .white)
    
    private let joinLabel = LabelDefault(text: "Join the community", font: .systemFont(ofSize: 40, weight: .semibold), textColor: .white, numberOfLines: 0, textAlignment: .center)
    
    private let textLabel = LabelDefault(text: "Lets get to know all the cryptocurrencies on the market and follow the ones we like the most! You don't want to lose the opportunity to buy a good cypto.", font: .systemFont(ofSize: 18, weight: .regular), textColor: .white, numberOfLines: 0, textAlignment: .left)
        
    private let continueButton = ButtonDefault(title: "Continue with Facebook")
        
    private let leftSeparatorLine: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    private let rightSeparatorLine: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    private let orLabel: UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .white
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    private let signButton = ButtonDefault(title: "Sign up with Facebook")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "mainColor")
        setElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElements() {
        setCryptoImage()
        setTitle()
        setJoin()
        setText()
        setContinue()
        setSeparatorLine()
        setupAdditionalSeparatorLines()
        setSign()
    }
    
    private func setCryptoImage() {
        addSubview(cryptoImageView)
        
        let cryptoImageViewConstraints = [
            cryptoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            cryptoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cryptoImageView.widthAnchor.constraint(equalToConstant: 100),
            cryptoImageView.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(cryptoImageViewConstraints)
    }
    
    private func setTitle() {
        addSubview(titleLabel)
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: cryptoImageView.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: cryptoImageView.centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(titleLabelConstraints)
    }
    
    private func setJoin() {
        addSubview(joinLabel)
                
        let joinLabelConstraints = [
            joinLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            joinLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            joinLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ]
        
        NSLayoutConstraint.activate(joinLabelConstraints)
    }
    
    private func setText() {
        addSubview(textLabel)
                
        let textLabelConstraints = [
            textLabel.topAnchor.constraint(equalTo: joinLabel.bottomAnchor, constant: 30),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ]
        
        NSLayoutConstraint.activate(textLabelConstraints)
    }
    
    private func setContinue() {
        addSubview(continueButton)
        
        continueButton.addTarget(self, action: #selector(didTapToLogin), for: .touchUpInside)
        
        let continueButtonConstraints = [
            continueButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 30),
            continueButton.leadingAnchor.constraint(equalTo: textLabel.leadingAnchor, constant: 10),
            continueButton.trailingAnchor.constraint(equalTo: textLabel.trailingAnchor, constant: -10),
            continueButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        NSLayoutConstraint.activate(continueButtonConstraints)
    }


    private func setSeparatorLine() {
        addSubview(orLabel)
        
        NSLayoutConstraint.activate([
            orLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            orLabel.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 20)
        ])
    }
    
    private func setupAdditionalSeparatorLines() {
        addSubview(leftSeparatorLine)
        addSubview(rightSeparatorLine)


        NSLayoutConstraint.activate([
            leftSeparatorLine.centerYAnchor.constraint(equalTo: orLabel.centerYAnchor),
            leftSeparatorLine.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            leftSeparatorLine.trailingAnchor.constraint(equalTo: orLabel.leadingAnchor, constant: -8),
            leftSeparatorLine.heightAnchor.constraint(equalToConstant: 2),

            rightSeparatorLine.centerYAnchor.constraint(equalTo: orLabel.centerYAnchor),
            rightSeparatorLine.leadingAnchor.constraint(equalTo: orLabel.trailingAnchor, constant: 8),
            rightSeparatorLine.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            rightSeparatorLine.heightAnchor.constraint(equalToConstant: 2)
        ])
    }


    private func setSign() {
        addSubview(signButton)
        
        let signButtonConstraints = [
            signButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 20),
            signButton.leadingAnchor.constraint(equalTo: continueButton.leadingAnchor),
            signButton.trailingAnchor.constraint(equalTo: continueButton.trailingAnchor),
            signButton.heightAnchor.constraint(equalTo: continueButton.heightAnchor)
        ]
        
        NSLayoutConstraint.activate(signButtonConstraints)
    }
    
    @objc private func didTapToLogin() {
        onContinueButtonTapped?()
    }
}
