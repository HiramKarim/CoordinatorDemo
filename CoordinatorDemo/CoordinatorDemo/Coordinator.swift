//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Hiram Castro on 26/01/22.
//

import Foundation
import UIKit

enum Event {
    case ButtonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
