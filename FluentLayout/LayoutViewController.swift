//
//  LayoutViewController.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import UIKit

/*
 View controller class where the view of the view controller is a LayoutScrollable object
 */
open class LayoutViewController: UIViewController {
    
    public let layout = LayoutScrollable()
    
    override open func loadView() {
        self.view = layout
    }

}
