//
//  SomDosBichosView.swift
//  SomDosBichos
//
//  Created by Jean Ramalho on 27/03/25.
//
import Foundation
import UIKit

class SomDosBichosView: UIView {
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    lazy var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var stackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var caoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "cao") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            button.setImage(imagemRedimensionada, for: .normal)
        }
        return button
    }()
    
    lazy var gatoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "gato") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            
            button.setImage(imagemRedimensionada, for: .normal)
        }
        
        return button
    }()
    
    lazy var leaoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "leao") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            
            button.setImage(imagemRedimensionada, for: .normal)
        }
        
        return button
    }()
    
    lazy var macacoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "macaco") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            
            button.setImage(imagemRedimensionada, for: .normal)
        }
        
        return button
    }()
    
    lazy var ovelhaButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "ovelha") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            
            button.setImage(imagemRedimensionada, for: .normal)
        }
        
        return button
    }()
    
    lazy var vacaButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "vaca") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizedImage(to: CGSize(width: 150, height: 150))
            
            button.setImage(imagemRedimensionada, for: .normal)
        }
        
        return button
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "logo")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        
        backgroundColor = UIColor(cgColor: CGColor(red: 244/255, green: 235/255, blue: 187/255, alpha: 1))
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(logoImageView)
        mainStackView.addArrangedSubview(stackView1)
        mainStackView.addArrangedSubview(stackView2)
        mainStackView.addArrangedSubview(stackView3)
        
        stackView1.addArrangedSubview(caoButton)
        stackView1.addArrangedSubview(gatoButton)
        
        stackView2.addArrangedSubview(leaoButton)
        stackView2.addArrangedSubview(macacoButton)
        
        stackView3.addArrangedSubview(vacaButton)
        stackView3.addArrangedSubview(ovelhaButton)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            mainStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
