//
//  AppDelegate.swift
//  04.01 DARS
//
//  Created by Mac on 04/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = FirstViewController()
         window?.rootViewController = UINavigationController(rootViewController: vc)
         window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

    
}

