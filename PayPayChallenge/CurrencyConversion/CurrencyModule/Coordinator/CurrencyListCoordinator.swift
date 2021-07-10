//
//  CurrencyListCoordinator.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import UIKit

final class CurrencyListCoordinator: Coordinator {
    
    private var presenter: UINavigationController
    private var currencyViewController: CurrencyViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let currencyViewController = CurrencyViewController()
        self.currencyViewController = currencyViewController
        presenter.pushViewController(currencyViewController, animated: true)
    }
}
