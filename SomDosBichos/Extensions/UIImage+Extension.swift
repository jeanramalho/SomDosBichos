//
//  UIImage+Extension.swift
//  SomDosBichos
//
//  Created by Jean Ramalho on 27/03/25.
//
import UIKit

extension UIImage {
    
    func resizedImage(to size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
