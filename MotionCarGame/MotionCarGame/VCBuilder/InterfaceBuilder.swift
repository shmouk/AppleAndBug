//
//  InterfaceBuilder.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

extension ViewController {
    
    func createView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        return view
    }
    
    func createLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .orange
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }
    
    func createTextField() -> UITextField {
        let textField = UITextField(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: view.frame.width * 0.5,
                                                  height: view.frame.height * 0.08))
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(cgColor: CGColor(red: 1, green: 1, blue: 1, alpha: 0.5))
        textField.placeholder = "Input name"
        textField.textAlignment = .center
        return textField
    }
    
    func createButton(title: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        return button
    }
}
