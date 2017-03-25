//
//  LayoutStyle.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import Foundation


public class LayoutDefaults {
    
    public static var defaultControls: LayoutDefaultControls = LayoutDefaultControlCreator()
    
    
    // MARK: Colors
    
    public static var backgroundColor: UIColor = .init(colorLiteralRed: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
    
    public static var sectionBackgroundColor: UIColor = .white
    
    public static var sectionBorderColor: UIColor = .init(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
    
    
    // MARK: Layout Valibles
    
    public static var padding: UIEdgeInsets = UIEdgeInsetsMake(12, 12, 12, 12)
    
    public static var sectionPadding: UIEdgeInsets = UIEdgeInsetsMake(8, 8, 8, 8)
    
    public static var spacing: CGFloat = 12
    
    public static var sectionBorderWidth: CGFloat = 1
    
    public static var sectionSpacing: CGFloat = 4
}
