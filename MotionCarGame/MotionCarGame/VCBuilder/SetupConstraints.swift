//
//  SetupConstraints.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

extension ViewController {
    
    func setConstraints() {
      
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            topView.heightAnchor.constraint(equalToConstant: view.frame.height / 4)
        ])

        NSLayoutConstraint.activate([
            downView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40),
            downView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            downView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            downView.heightAnchor.constraint(equalToConstant: view.frame.height / 3)
        ])

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.3)
        ])

        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 30),
            nameTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -30),
            nameTextField.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.2)
        ])

        NSLayoutConstraint.activate([
            loadButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            loadButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 30),
            loadButton.widthAnchor.constraint(equalTo: saveButton.widthAnchor),
            loadButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.2)
        ])

        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            saveButton.leadingAnchor.constraint(equalTo: loadButton.trailingAnchor, constant: 10),
            saveButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -30),
            saveButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.2)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: downView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: downView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: downView.trailingAnchor),
            nameLabel.heightAnchor.constraint(equalTo: downView.heightAnchor, multiplier: 0.3)
        ])
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            scoreLabel.leadingAnchor.constraint(equalTo: downView.leadingAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: downView.trailingAnchor),
            scoreLabel.heightAnchor.constraint(equalTo: downView.heightAnchor, multiplier: 0.3)
        ])

        NSLayoutConstraint.activate([
            recordLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            recordLabel.leadingAnchor.constraint(equalTo: downView.leadingAnchor),
            recordLabel.trailingAnchor.constraint(equalTo: downView.trailingAnchor),
            recordLabel.bottomAnchor.constraint(equalTo: downView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: downView.bottomAnchor, constant: 40),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            startButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
        
    }
}

