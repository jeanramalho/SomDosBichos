//
//  SplashScreenView.swift
//  SomDosBichos
//
//  Created by Jean Ramalho on 27/03/25.
//
import Foundation
import UIKit

class SplashScreenView: UIView {
    
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
        
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
