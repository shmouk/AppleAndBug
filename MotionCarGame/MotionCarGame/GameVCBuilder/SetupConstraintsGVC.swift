import UIKit

extension GameViewController {
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            treeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            treeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            treeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            treeView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40)
        ])
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.1),
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40)
        ])
    }
}

