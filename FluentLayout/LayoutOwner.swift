//
//  LayoutOwner.swift
//  SimpleLayout
//
//  Created by Wes on 3/23/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import Foundation


/*
 For Views that have a layout object. Allows use of extension methods for easier
 access to the layout object
 */
public protocol LayoutOwner {
    
    var layout: Layout { get set }
    
}
