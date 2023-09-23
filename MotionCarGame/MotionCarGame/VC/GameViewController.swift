//
//  ViewControllerGame.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit
import CoreMotion

class GameViewController: UIViewController {
    
    lazy var treeView = interfaceBuilder.createRoadImageView()
    lazy var containerView = interfaceBuilder.createContainerStackView()

    lazy var basketView = interfaceBuilder.createImageView(image: "basket")
    lazy var appleView = interfaceBuilder.createImageView(image: "apple")
    lazy var bugView = interfaceBuilder.createImageView(image: "bug")
    
    lazy var leftHeartView = interfaceBuilder.createImageView(image: "heart")
    lazy var centerHeartView = interfaceBuilder.createImageView(image: "heart")
    lazy var rightHeartView = interfaceBuilder.createImageView(image: "heart")
    
   
    lazy var interfaceBuilder = InterfaceBuilder()
    lazy var customAlert = CustomAlert()
    lazy var motion = CMMotionManager()
    
    var basketViewCenter: CGPoint?
    weak var timerF: Timer?
    weak var timerS: Timer?
    weak var delegate: ViewControllerDelegate?
    
    var health = 3
    var score = 0
    var filteredAccelerationX = 0.0
    var filteredAccelerationY = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
    }
    
    deinit {
        print("close")
    }
    
    func setupUI() {
        setSettingView()
        createSubview()
        setConstraints()
        startAccelerometerUpdates()
        animateView()
    }
    
    func createSubview() {
        view.addSubviews(treeView, containerView)
        treeView.addSubviews(basketView, appleView, bugView)
        
        containerView.addArrangedSubview(leftHeartView)
        containerView.addArrangedSubview(centerHeartView)
        containerView.addArrangedSubview(rightHeartView)
        
    }
    
    func closeViewController() {
        delegate?.scoreDidChange(score)
        dismiss(animated: true)
    }
}
