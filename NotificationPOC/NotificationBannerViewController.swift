//
//  ViewController.swift
//  NotificationPOC
//
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
        let customBannerView = CustomBannerView(title: "Valid", BGColor: nil, image: #imageLiteral(resourceName: "Valid"), onLeft: true)
        let customBanner = NotificationBanner(customView: customBannerView)
        customBanner.show()
    }
    
    @IBAction func onClickInvalid(_ sender: UIButton) {
        let customBannerView = CustomBannerView(title: "Invalid", BGColor: nil, image: #imageLiteral(resourceName: "Invalid"), onLeft: true)
        let customBanner = NotificationBanner(customView: customBannerView)
        customBanner.show()
    }
    
}

