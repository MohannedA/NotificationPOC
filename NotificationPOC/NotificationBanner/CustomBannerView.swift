//
//  customView.swift
//  NotificationPOC
//
//  Created by mac on 27/10/1439 AH.
//  Copyright © 1439 mac. All rights reserved.
//

import UIKit

class CustomBannerView: UIView {
    
    init(title: String!, BGColor: UIColor?, image: UIImage!, onLeft: Bool!) {
        super.init(frame: .zero)
        
        // Assign color it it is specified, else set default color (~ lightGray).
        backgroundColor = BGColor ?? UIColor(red: 229/255, green: 230/255, blue: 232/255, alpha: 1)
        
        // Define image view.
        let imageView = setImageView(image: image, onLeft: onLeft)
        
        // Define main view to add other views to it. (Necessary?)
        let mainView = UIView()
        // Add the main view to the screen view.
        addSubview(mainView)
        
        // Define banner title.
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 25.0)
        titleLabel.text = title
        mainView.addSubview(titleLabel)
        
        // Add constraints to the main view.
        mainView.snp.makeConstraints{ (make) in
            make.left.equalTo(imageView.snp.left).offset(-15)
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        // Add constraints to the title label view.
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(imageView.snp.right).offset(10)
            make.top.equalTo(imageView.snp.top).offset(7)
            make.bottom.equalTo(imageView.snp.bottom)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: ~ Private Methods
    private func setImageView(image: UIImage, onLeft: Bool) -> UIView {
        
        // Define container for the image view. (Necessary?)
        let view = UIView()
        addSubview(view)
        
        // Definr the image view.
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        // Add constraints to the image view.
        imageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        // Add constraints to the container view.
        view.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            if onLeft { // Set the image to be on the left.
                make.left.equalToSuperview().offset(15)
            } else { // Set the image to be on the right.
                make.right.equalToSuperview().offset(-15)
            }
            // Set the container view width to be 40 to resize the image.
            make.width.equalTo(40)
        }
        
        return view
    }

}
