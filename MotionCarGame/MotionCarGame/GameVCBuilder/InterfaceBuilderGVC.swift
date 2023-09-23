//
//  GameBuilder.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

class InterfaceBuilder {
    
    func createRoadImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "tree")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }
    
    func createImageView(image: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.frame.size = CGSize(width: 70, height: 70)
        imageView.image = UIImage(named: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }

    func createContainerStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .white
        return stackView
    }
   
}
