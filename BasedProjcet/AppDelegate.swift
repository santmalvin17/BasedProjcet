//
//  AppDelegate.swift
//  BasedProjcet
//
//  Created by Malvin Santoso on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navController: UINavigationController?
    var loginViewController: LoginViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        window = UIWindow.init(frame: UIScreen.main.bounds)
//        loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
//        navController = UINavigationController(rootViewController: loginViewController!)
//        window?.rootViewController = navController
//        window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func goToHome(){
//        guard let window = UIApplication.shared.keyWindow else{return}
//        window.frame = UIScreen.main.bounds
//        window.backgroundColor = .white
//
//        let homeViewController = HomeViewController(nibName: "Home", bundle: nil)
//        let settingsViewController = SettingsViewController(nibName: "SettingsView", bundle: nil)
//        let exploreViewController = ExploreViewController(nibName: "ExploreView", bundle: nil)
//        let newsViewController = NewsViewController(nibName: "NewsView", bundle: nil)
        
    }


}

