//
//  Delegate.swift
//  MotionCarGame
//
//  Created by Марк on 6.07.23.
//

protocol ViewControllerDelegate: AnyObject {
    func scoreDidChange(_ score: Int)

}
