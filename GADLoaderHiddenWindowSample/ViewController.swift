//
//  ViewController.swift
//  GADLoaderHiddenWindowSample
//
//  Created by sakamoto kazuhiro on 2016/07/06.
//  Copyright © 2016年 Sakamoto Kazuhiro. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func didTapInitAdLoader(sender: AnyObject) {
        let _ = GADAdLoader(adUnitID: "", rootViewController: self, adTypes: [kGADAdLoaderAdTypeNativeCustomTemplate], options: [])
    }
    
    
    @IBAction func didTapWindowCount(sender: AnyObject) {
        let windowCount = UIApplication.sharedApplication().windows.filter{$0.windowLevel == UIWindowLevelNormal}.count
        let alertController = UIAlertController(title: nil, message: "normal level window count is: \(windowCount)", preferredStyle: .Alert)
        presentViewController(alertController, animated: true, completion: nil)
        let defaultAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertController.addAction(defaultAction)
    }
}

