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
    var navArrayMenu = [UINavigationController]()
    var tabBarController = UITabBarController()


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
        guard let window = UIApplication.shared.keyWindow else{
            return
            
        }
        window.frame = UIScreen.main.bounds
        window.backgroundColor = .white
        
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let settingsViewController = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        let exploreViewController = ExploreViewController(nibName: "ExploreViewController", bundle: nil)
        let newsViewController = NewsViewController(nibName: "NewsViewController", bundle: nil)
        let feedViewController = FeedViewController(nibName: "FeedViewController", bundle: nil)
        let cameraViewController = CameraViewController(nibName: "CameraViewController", bundle: nil)
        let alarmViewController = AlarmViewController(nibName: "AlarmViewController", bundle: nil)
        let chatViewController = ChatViewController(nibName: "ChatViewController", bundle: nil)
        let favoriteViewController = FavoriteViewController(nibName: "FavoriteViewController", bundle: nil)
        let moreViewController = MoreViewController(nibName: "MoreViewController", bundle: nil)

        UITabBar.appearance().tintColor = .blue
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica Neue", size: 10)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica Neue", size: 10)!], for: .selected)
        
        let dashboard = UINavigationController(rootViewController: homeViewController)
        let settings = UINavigationController(rootViewController: settingsViewController)
        let explore = UINavigationController(rootViewController: exploreViewController)
        let news = UINavigationController(rootViewController: newsViewController)
        let feed = UINavigationController(rootViewController: feedViewController)
        let camera = UINavigationController(rootViewController: cameraViewController)
        let alarm = UINavigationController(rootViewController: alarmViewController)
        let chat = UINavigationController(rootViewController: chatViewController)
        let favorite = UINavigationController(rootViewController: favoriteViewController)
        let more = UINavigationController(rootViewController: moreViewController)
        
        let menuDictionary: [Int: UINavigationController] = [
            1: settings,
            2: favorite,
            3: feed,
            4: camera,
            5: alarm,
            6: chat,
        ]
        
        let modelDataLogin = ModelDataLogin()
        
        
        var menuName: [Int: String] = [:]
        print(modelDataLogin.menuNavbars)
        for menuItem in ACData.LOGINDATA.menuNavbars {
            print("masuk")
            let menu = menuItem.mobileMenuId!
            guard let menuNav = menuDictionary[menu] else {
                return
            }
            menuName[menuItem.mobileMenuId!] = menuItem.mobileMenuDesc
            navArrayMenu.append(menuNav)
        }
        navArrayMenu.append(more)
        
        let settingsTab = UITabBarItem(title: menuName[1], image: .checkmark, selectedImage: .none)
        settingsViewController.tabBarItem = settingsTab
        
        let favoriteTab = UITabBarItem(title: menuName[2], image: .checkmark, selectedImage: .add)
        favoriteViewController.tabBarItem = favoriteTab
        
        let feedTab = UITabBarItem(title: menuName[3], image: .checkmark, selectedImage: .add)
        feedViewController.tabBarItem = feedTab
        
        let cameraTab = UITabBarItem(title: menuName[4], image: .checkmark, selectedImage: .add)
        cameraViewController.tabBarItem = cameraTab
        
        let alarmTab = UITabBarItem(title: menuName[5], image: .checkmark, selectedImage: .add)
        alarmViewController.tabBarItem = alarmTab
        
        let chatTab = UITabBarItem(title: menuName[6], image: .checkmark, selectedImage: .add)
        chatViewController.tabBarItem = chatTab
        
        let moreTab = UITabBarItem(title: "More", image: .checkmark, selectedImage: .add)
        moreViewController.tabBarItem = moreTab
        
        tabBarController.viewControllers = navArrayMenu
        tabBarController.selectedIndex = 0
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }


}
