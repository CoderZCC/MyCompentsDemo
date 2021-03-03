//
//  AppDelegate.swift
//  HmmToCProject
//
//  Created by ZCC on 2021/3/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.black
        window?.makeKeyAndVisible()
        let vc = ViewController()
        window?.rootViewController = vc
        
        return true
    }
}

