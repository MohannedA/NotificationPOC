//
//  SecondViewController.swift
//  NotificationPOC
//  Link: https://github.com/SwiftKickMobile/SwiftMessages
//  Created by mac on 27/10/1439 AH.
//  Copyright © 1439 mac. All rights reserved.
//

import UIKit
import SwiftMessages

class SwiftMessagesViewController: UIViewController {

    // MARK: ~ Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
    }
    
    // MARK: ~ Actions
    @IBAction func onClickValid(_ sender: UIButton) {
        
        // Instantiate a message view from the provided card view layout. SwiftMessages searches for nib
        // files in the main bundle first, so you can easily copy them into your project and make changes.
        let view = MessageView.viewFromNib(layout: .messageViewIOS8)
        
        // Add a drop shadow.
        view.configureDropShadow()
        
        // Set the background and text color.
        view.configureTheme(backgroundColor: UIColor(red: 229/255, green: 230/255, blue: 232/255, alpha: 1), foregroundColor: .darkGray)
        
        // Define image.
        let image = #imageLiteral(resourceName: "Valid")
        
        // Set message title, and image.
        view.configureContent(title: "Valid", body: "", iconImage: (image.resizedImageWithinRect(rectSize: CGSize(width: 50, height: 50))))
        
        // Show the message.
        SwiftMessages.show(view: view)
        
    }
    
    @IBAction func onClickInvalid(_ sender: UIButton) {
        // Instantiate a message view from the provided card view layout. SwiftMessages searches for nib
        // files in the main bundle first, so you can easily copy them into your project and make changes.
        let view = MessageView.viewFromNib(layout: .messageViewIOS8)
        
        // Add a drop shadow.
        view.configureDropShadow()
        
        // Set the background and text color.
        view.configureTheme(backgroundColor: UIColor(red: 229/255, green: 230/255, blue: 232/255, alpha: 1), foregroundColor: .darkGray)
        
        // Define image.
        let image = #imageLiteral(resourceName: "Invalid")
        
        // Set message title, and image.
        view.configureContent(title: "Invalid", body: "", iconImage: (image.resizedImageWithinRect(rectSize: CGSize(width: 50, height: 50))))
        
        // Show the message.
        SwiftMessages.show(view: view)
    }
    
    
}
