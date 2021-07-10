//
//  CurrencyViewController.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import UIKit

class CurrencyViewController: UIViewController {

    //MARK: - View life cyle
    
    override func loadView() {
        let view = RootView()
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    //MARK: - Private Meyhods
    
    private func setUp() {
        self.view.backgroundColor = .white
        self.title = LocalizableStrings.currencyTitle
        
        //Hide keyboard on tap gesture
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tap)
    }
}
