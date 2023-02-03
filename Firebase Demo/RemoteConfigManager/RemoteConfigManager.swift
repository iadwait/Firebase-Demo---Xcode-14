//
//  RemoteConfigManager.swift
//  Firebase Demo
//
//  Created by Adwait Barkale on 02/02/23.
//

import Foundation
import FirebaseRemoteConfig

class RemoteConfigManager {
    
    static let shared = RemoteConfigManager()
    var remoteConfig = RemoteConfig.remoteConfig()
    var remoteConfigDict: NSDictionary?
    
    func readPlistData() {
        var remoteConfigDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "RemoteConfig", ofType: "plist") {
            remoteConfigDict = NSDictionary(contentsOfFile: path)
        }
        for (key, val) in remoteConfigDict! {
          print("\(key):\(val)")
        }
    }
    
    func setupRemoteConfigDefaults() {
        let defaultValue = ["appTitle": "FirebaseDemo" as NSObject,
                            "btnCrashTitle": "Crash" as NSObject]
        
        remoteConfig.setDefaults(defaultValue)
    }
    
    func fetchRemoteConfig(){
        remoteConfig.fetch(withExpirationDuration: 0) { [unowned self] (status, error) in
            guard error == nil else { return }
            print("Got the value from Remote Config!")
            remoteConfig.activate()
        }
    }
    
    func getValue(forKey: String) -> String {
        return remoteConfig.configValue(forKey: forKey).stringValue ?? ""
    }
    
}
