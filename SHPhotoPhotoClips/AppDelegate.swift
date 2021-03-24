//
//  AppDelegate.swift
//  SHPhotoPhotoClips
//
//  Created by shark on 2021/3/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = SHLoginVC.init()
        window?.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

  


}

