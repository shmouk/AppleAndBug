//
//  GameSettings.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

extension GameViewController {
    
    func setSettingView() {
        view.layoutSubviews()
        
        appleView.frame.origin = CGPoint(x: treeView.frame.width / 2 , y: 0)
    }
    
    // MARK: - Animate view
    
    func animateView() {
        
        startAnimation(for: appleView, incrementScore: true, timer: &timerF)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: { [self] in
            startAnimation(for: bugView, incrementScore: false, timer: &timerS)
        })
    }
    
    func startAnimation(for view: UIView, incrementScore: Bool, timer: inout Timer?) {
        
        var moveDown: CGFloat = 0

        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { [self] timer in
          
            moveDown += 50      // set fall speed
            
            if view.frame.origin.y > treeView.frame.height {
                view.frame.origin = randomPosition()
            }
            
            if basketView.frame.intersects(view.frame) {
                if incrementScore {
                    incrementScoreAndResetView(view)
                } else {
                    handleHealthAndResetView(view)
                }
            } else {
                animateViewMoveDown(view, moveDown)
            }
        }
    }
    
    // MARK: - Score counter and reset position
    
    func incrementScoreAndResetView(_ view: UIView) {
        score += 1
        resetViewPosition(view)
    }
    
    func handleHealthAndResetView(_ view: UIView) {
        
        switch health {
        case 3:
            rightHeartView.isHidden = true
            
        case 2:
            centerHeartView.isHidden = true
            
        case 1:
            invalidateTimerAndCloseViewController()
            
        default:
            break
        }
        
        health -= 1
        resetViewPosition(view)
    }
    
    // MARK: - Fall animate
    
    func animateViewMoveDown(_ view: UIView, _ moveDown: CGFloat) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear, animations: { [self] in
            view.transform = CGAffineTransform(translationX: 0, y: moveDown)
        })
    }
    
    // MARK: - Set random position for view
    
    func resetViewPosition(_ view: UIView) {
        view.frame.origin = randomPosition()
    }
    
    // MARK: - Timer invalidate and action show alert
    
    func invalidateTimerAndCloseViewController() {

        timerF?.invalidate()
        timerS?.invalidate()
        
        let alert = customAlert.showAlert(score, actionClose: closeViewController)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Set random coordinates
    
    func randomPosition() -> CGPoint {
        let value = view.frame.width / 4
        let valueRandomPosition = [value, value * 2, value * 3]
        let randomPos = valueRandomPosition.randomElement() ?? .zero
        return CGPoint(x: randomPos, y: 0)
    }
}

