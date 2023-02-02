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
    
    func setupRemoteConfigDefaults() {
    let defaultValue = ["appTitle": "FirebaseDemo" as NSObject]
    remoteConfig.setDefaults(defaultValue)
    }
    
    func fetchRemoteConfig(){
    remoteConfig.fetch(withExpirationDuration: 0) { [unowned self] (status, error) in
    guard error == nil else { return }
    print("Got the value from Remote Config!")
    remoteConfig.activate()
    }}
    
    func getValue(forKey: String) -> String {
        return remoteConfig.configValue(forKey: forKey).stringValue ?? ""
    }
    
}
