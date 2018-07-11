//
//  ViewController.swift
//  NotificationPOC
//  Link: https://github.com/Daltron/NotificationBanner
//  Created by mac on 27/10/1439 AH.
//  Copyright © 1439 mac. All rights reserved.
//

import UIKit
import NotificationBannerSwift

class NotificationBannerViewController: UIViewController {

    // MARK: ~ Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: ~ Actions
    @IBAction func onClickValid(_ sender: UIButton) {
        // Define custom banner view.
        let customBannerView = CustomBannerView(title: "Valid", BGColor: nil, image: #imageLiteral(resourceName: "Valid"), onLeft: true)
        // Assign the custom banner view to the notification banner.
        let customBanner = NotificationBanner(customView: customBannerView)
        // Display the custom banner.
        customBanner.show()
    }
    
    @IBAction func onClickInvalid(_ sender: UIButton) {
        // Define custom banner view.
        let customBannerView = CustomBannerView(title: "Invalid", BGColor: nil, image: #imageLiteral(resourceName: "Invalid"), onLeft: true)
        // Assign the custom banner view to the notification banner.
        let customBanner = NotificationBanner(customView: customBannerView)
        // Display the custom banner.
        customBanner.show()
    }
    
}

