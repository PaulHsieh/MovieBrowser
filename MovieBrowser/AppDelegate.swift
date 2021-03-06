//
//  AppDelegate.swift
//  MovieBrowser
//
//  Created by Paul Hsieh on 2018/8/13.
//  Copyright © 2018年 PaulHsieh. All rights reserved.
//

import UIKit
import SVProgressHUD
import SDWebImage

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let vc = MainSceneViewController()
        let navi = UINavigationController(rootViewController: vc)
        window?.rootViewController = navi
        window?.makeKeyAndVisible()

        setNavigationBarAppearence()
        defaultSVProgressHUDSetting()
        defaultSDWebImageViewSetting()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate {
    func appDefaultSettings() {
        setNavigationBarAppearence()
        defaultSDWebImageViewSetting()
        defaultSVProgressHUDSetting()
    }
    
    func setNavigationBarAppearence() {
        UINavigationBar.appearance().barTintColor = UIColor.mainDark
        UINavigationBar.appearance().tintColor = UIColor(white: 0.9, alpha: 0.9)
        let textAttributes = [NSForegroundColorAttributeName:UIColor(white: 0.9, alpha: 0.9)]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().isOpaque = false
        UINavigationBar.appearance().shadowImage = UIImage.imageWithColor(color: UIColor.clear)!.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        UINavigationBar.appearance().isTranslucent = false
    }
    
    func defaultSVProgressHUDSetting() {
        SVProgressHUD.setDefaultMaskType(.none)
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.setOffsetFromCenter(UIOffset.zero)
    }
    
    func defaultSDWebImageViewSetting() {
        SDImageCache.shared().shouldDecompressImages = false
        SDWebImageDownloader.shared().shouldDecompressImages = false
    }
}

