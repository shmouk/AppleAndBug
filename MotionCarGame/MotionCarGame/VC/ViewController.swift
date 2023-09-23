//
//  ViewController.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var topView = createView()
    lazy var downView = createView()
    lazy var startButton = createButton(title: "Start")
    lazy var loadButton = createButton(title: "Load")
    lazy var saveButton = createButton(title: "Save")
    lazy var scoreLabel = createLabel()
    lazy var recordLabel = createLabel()
    lazy var nameLabel = createLabel()
    lazy var titleLabel = createLabel()
    lazy var nameTextField = createTextField()
    
    let userDefaults = UserDefaults.init(suiteName: "User")
    
    var score = 0 {
        didSet {
            saveViewAndDefaults() 
        }
    }
    
    var record = 0 {
        didSet {
            saveViewAndDefaults()
        }
    }
    
    var name = ""
                
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
    }

    func setupUI() {
        loadViewAndDefaults() 
        setSettingView()
        createSubview()
        setConstraints()
        setupTargets()
    }
    
    func loadViewAndDefaults() {
        loadDefaultsSettings()
        updateSettingsSubviews()
    }
    
    func saveViewAndDefaults() {
        saveDefaultsSettings()
        updateSettingsSubviews()
    }
    
// MARK: - Work with View
    
    func setSettingView() {
        nameTextField.delegate = self
    }
    
    func  createSubview() {
        view.addSubviews(topView, downView, startButton)
        topView.addSubviews(titleLabel, nameTextField, loadButton, saveButton)
        downView.addSubviews(nameLabel, scoreLabel, recordLabel)
    }
    
    func updateSettingsSubviews() {
        titleLabel.text = "Car Motion"
        nameLabel.text = "Your name : \(name)"
        scoreLabel.text = "Your score : \(score)"
        recordLabel.text = "Your record : \(record)"
    }
    
// MARK: - Targets
    
    private func setupTargets() {
        startButton.addTarget(self, action: #selector(startAction(_:)), for: .touchUpInside)
        loadButton.addTarget(self, action: #selector(loadAction(_:)), for: .touchUpInside)
        saveButton.addTarget(self, action: #selector(saveAction(_:)), for: .touchUpInside)
    }
}

// MARK: - Action

private extension ViewController {
    @objc
    private func startAction(_ sender: Any) {
        let gameVC = GameViewController()
        gameVC.modalPresentationStyle = .fullScreen
        gameVC.delegate = self
        present(gameVC, animated: false)
    }
    
    @objc
    private func loadAction(_ sender: Any) {
        loadViewAndDefaults()
    }
    
    @objc 
    private func saveAction(_ sender: Any) {
        saveViewAndDefaults()
    }
}

// MARK: - ViewController Delegate

extension ViewController: ViewControllerDelegate {
    func scoreDidChange(_ score: Int) {
        self.score = score
        record = score > record ? score : record
    }
}

// MARK: - UITextFieldDelegate Delegate

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
