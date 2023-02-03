//
//  ViewController.swift
//  Firebase Demo
//
//  Created by Adwait Barkale on 24/01/23.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {
    
    @IBOutlet weak var lblFirebaseDemo: UILabel!
    
    @IBOutlet weak var btnCrash: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
        //          AnalyticsParameterItemID: "id-01",
        //          AnalyticsParameterItemName: "User Visits ViewController",
        //          AnalyticsParameterContentType: "cont",
        //        ])
        
        Analytics.logEvent("User_Visits_ViewController", parameters: nil)
        lblFirebaseDemo.text = RemoteConfigManager.shared.getValue(forKey: "appTitle")
        btnCrash.setTitle(RemoteConfigManager.shared.getValue(forKey: "btnCrashTitle"), for: .normal)
    }
    
    @IBAction func btnCrash(_ sender: UIButton) {
        fatalError("Crash to be Reported")
    }
    
}

