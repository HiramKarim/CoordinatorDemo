//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Hiram Castro on 26/01/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Press me", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan
        title = "Home"
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0),
            button.widthAnchor.constraint(equalToConstant: 50),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .ButtonTapped)
    }
}

