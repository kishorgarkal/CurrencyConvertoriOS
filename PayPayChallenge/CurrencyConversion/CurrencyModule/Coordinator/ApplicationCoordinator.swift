//
//  ApplicationCoordinator.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//
import UIKit

final class ApplicationCoordinator: Coordinator {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    private var currencyListCoordinator: CurrencyListCoordinator?
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        currencyListCoordinator = CurrencyListCoordinator(presenter: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        currencyListCoordinator?.start()
        window.makeKeyAndVisible()
    }
}
