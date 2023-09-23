//
//  Alert .swift
//  MotionCarGame
//
//  Created by Марк on 8.07.23.
//

import UIKit

class CustomAlert: UIAlertController {
    
    func showAlert(_ score: Int, actionClose: @escaping () -> Void) -> UIAlertController{
        let alertController = UIAlertController(
            title: "You loose",
            message: "Congratulations you have scored \(score) points",
            preferredStyle: UIAlertController.Style.alert
        )
        
        let cancelAction = UIAlertAction(
            title: "Close",
            style: UIAlertAction.Style.destructive) { [weak self] (action) in
                actionClose()
            }
        
        alertController.addAction(cancelAction)
        return alertController
    }
}


