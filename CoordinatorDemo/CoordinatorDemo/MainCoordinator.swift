//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Hiram Castro on 26/01/22.
//

import Foundation

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    var children: [Coordinator]? = nil
    
    func eventOccurred(with type: Event) {
        switch type {
        case .ButtonTapped:
            var vc: UIViewController & Coordinating = SecondVC()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            break
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: true)
    }
    
}
