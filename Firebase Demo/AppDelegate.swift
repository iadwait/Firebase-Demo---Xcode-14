//
//  AppDelegate.swift
//  Firebase Demo
//
//  Created by Adwait Barkale on 24/01/23.
//

import UIKit
import FirebaseCore
import FirebaseAnalytics
import FirebaseRemoteConfig

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        Analytics.logEvent("Application_Launched", parameters: nil)
        RemoteConfigManager.shared.setupRemoteConfigDefaults()
        RemoteConfigManager.shared.fetchRemoteConfig()
        return true
    }
    
}

