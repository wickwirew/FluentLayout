//
//  LayoutSection.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import UIKit

/*
 Layout sections are 'blocks' in the UI that are separated from the rest.
 Usually have a differnt background color than its superview
 */
open class LayoutSection: UIView, LayoutOwner {
    
    public var layout: Layout = Layout()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(layout)
        
        layout.pinToSuperview(top: LayoutDefaults.sectionPadding.top,
                           bottom: LayoutDefaults.sectionPadding.bottom,
                           left: LayoutDefaults.sectionPadding.left,
                           right: LayoutDefaults.sectionPadding.right)
        
        backgroundColor = LayoutDefaults.sectionBackgroundColor
        layer.borderColor = LayoutDefaults.sectionBorderColor.cgColor
        layer.borderWidth = LayoutDefaults.sectionBorderWidth
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
