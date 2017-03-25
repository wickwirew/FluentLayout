//
//  LayoutDefaults.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import Foundation
import UIKit

public protocol LayoutDefaultControls {
    
    func createLabel() -> UILabel
    
    func createTitleLabel() -> UILabel
    
    func createTextField() -> UITextField
    
    func createTextView() -> UITextView
    
    func createButton() -> UIButton
    
    func createImage() -> UIImageView
    
}
