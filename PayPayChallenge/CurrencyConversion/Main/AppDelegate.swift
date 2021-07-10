//
//  AppDelegate.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var applicationCoordinator: ApplicationCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        let appCordinator = ApplicationCoordinator(window: window)
        self.window = window
        self.applicationCoordinator = appCordinator

        appCordinator.start()

        return true
    }
}

