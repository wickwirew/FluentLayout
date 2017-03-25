//
//  ViewController.swift
//  Example
//
//  Created by Wes on 3/25/17.
//  Copyright © 2017 weswickwire. All rights reserved.
//

import UIKit
import FluentLayout

class ViewController: LayoutViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fluent Layout"
        
        let heartButton = UIButton()
        heartButton.setImage(UIImage(named: "Heart"), for: .normal)
        heartButton.imageView?.contentMode = .center
        
        let createdTime = UILabel()
        createdTime.text = "Posted 2 hrs ago"
        createdTime.textColor = .lightGray
        createdTime.font = UIFont.systemFont(ofSize: 13, weight: UIFontWeightLight)
        
        let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate."
        
        layout.create(spacing: 12) {
            
            // Top Title
            $0.addSection(title: "Lorem Ipsum")
            
            // Main Image, keep ratio of image
            $0.addImage(named: "snow.png").pinImageAspectRatio()
            
            // This section holds post information
            $0.addSection {
                
                // Group to contain the title, time stamp and heart
                $0.addStack(alignment: .center, spacing: 0) {
                    
                    // Title and time stamp should be on top of each other
                    $0.addStack(axis: .vertical, spacing: 0) {
                        $0.addTitleLabel(text: "Neque Porro Quisquam")
                        
                        // Add custom label
                        $0.add(view: createdTime)
                    }
                    
                    // Add heart button but pin width to 44
                    $0.add(view: heartButton).pin(width: 44)
                }
                
                // add post body
                $0.addLabel(text: loremIpsum)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

