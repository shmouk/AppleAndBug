//
//  AccelerometerUpdates.swift
//  MotionCarGame
//
//  Created by Марк on 5.07.23.
//

import UIKit
import CoreMotion

extension GameViewController {
    
    // MARK: - Accelerometer
    
    func startAccelerometerUpdates() {
        
        if motion.isAccelerometerAvailable {
            let accelerometerUpdateInterval = 1.0 / 60.0
            motion.accelerometerUpdateInterval = accelerometerUpdateInterval
            motion.startAccelerometerUpdates(to: .main) { [weak self] (data, error) in
                guard let acceleration = data?.acceleration else { return }
                
                let x = acceleration.x * 250
                let y = acceleration.y * 250
                let smooth = 0.07
                
                // - accelerometer filter
                
                let filteredX = (x * smooth) + (self?.filteredAccelerationX ?? 0.0) * (1.0 - smooth)
                let filteredY = (y * smooth) + (self?.filteredAccelerationY ?? 0.0) * (1.0 - smooth)
                
                self?.filteredAccelerationX = filteredX
                self?.filteredAccelerationY = filteredY
                
                DispatchQueue.main.async {
                    guard let superview = self?.basketView.superview,
                            let frame = self?.basketView.frame else { return }
                    let midX = superview.bounds.midX
                    let maxY = superview.bounds.maxY - frame.height - 200
                    
                    // Check that the x-coordinate does not go beyond
                    var clampedX = midX + filteredX
                    let minAllowedX = frame.width / 2.0
                    let maxAllowedX = superview.bounds.width - frame.width / 2.0
                    clampedX = max(minAllowedX , min(maxAllowedX, clampedX))
                    
                    // y - coordinate
                    var clampedY = maxY - filteredY
                    let minAllowedY = frame.height / 2.0
                    let maxAllowedY = superview.bounds.height - frame.height / 2.0
                    clampedY = max(minAllowedY , min(maxAllowedY, clampedY))
                    
                    self?.basketView.center = CGPoint(x: clampedX, y: clampedY)
                    self?.basketViewCenter = self?.basketView.center
                }
                
            }
        }
    }
}
