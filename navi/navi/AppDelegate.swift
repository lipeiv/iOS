//
//  AppDelegate.swift
//  navi
//
//  Created by 李培培 on 2021/1/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        display_(title: "おはようございます", desc: "desc")
        
        return true
    }

    func display_(title: String, desc: String) {
        let alert = UIAlertController(title: title, message: desc, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "了解", style: UIAlertAction.Style.cancel, handler: nil);
        alert.addAction(OKAction)
        UIApplication.shared.keyWindow?.rootViewController!.present(alert, animated: true, completion: nil)
    }

}

