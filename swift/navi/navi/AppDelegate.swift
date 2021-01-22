//
//  AppDelegate.swift
//  navi
//
//  Created by 李培培 on 2021/1/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
        let nav = UINavigationController(rootViewController: ViewController())
        self.window?.rootViewController = nav
      
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle


}

