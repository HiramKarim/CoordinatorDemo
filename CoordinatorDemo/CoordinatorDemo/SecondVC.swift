//
//  SecondVC.swift
//  CoordinatorDemo
//
//  Created by Hiram Castro on 26/01/22.
//

import UIKit

class SecondVC: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        title = "Second"
    }
    
}
