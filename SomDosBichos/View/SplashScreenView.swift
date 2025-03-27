//
//  SplashScreenView.swift
//  SomDosBichos
//
//  Created by Jean Ramalho on 27/03/25.
//
import Foundation
import UIKit

class SplashScreenView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        label.text = "O Som dos Bichos"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        
        backgroundColor = .orange
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        
        addSubview(titleLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
