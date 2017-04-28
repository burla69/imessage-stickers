//
//  AppDelegate.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Set window
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = UINavigationController(rootViewController: StickersViewController())
        window!.makeKeyAndVisible()
        return true
    }
}
