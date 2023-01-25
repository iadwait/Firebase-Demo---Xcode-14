//
//  ViewController.swift
//  Firebase Demo
//
//  Created by Adwait Barkale on 24/01/23.
//

import UIKit
import FirebaseAnalytics
import FirebaseRemoteConfig

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
//          AnalyticsParameterItemID: "id-01",
//          AnalyticsParameterItemName: "User Visits ViewController",
//          AnalyticsParameterContentType: "cont",
//        ])
        
        Analytics.logEvent("User Visits ViewController", parameters: nil)
    }

    @IBAction func btnCrash(_ sender: UIButton) {
        fatalError("Crash to be Reported")
    }
    
}

