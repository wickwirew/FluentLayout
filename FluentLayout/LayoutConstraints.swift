//
//  Constraints.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import Foundation

public extension UIView {
    
    // MARK: Autolayout Extensions
    
    @discardableResult
    func pinToSuperview(top: CGFloat? = nil, bottom: CGFloat? = nil, left: CGFloat? = nil, right: CGFloat? = nil) -> UIView {
        
        if (self.superview == nil) {
            return self
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false

        if let constant = top {
            self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                             attribute: .top,
                                                             relatedBy: .equal,
                                                             toItem: self.superview,
                                                             attribute: .top,
                                                             multiplier: 1,
                                                             constant: constant))
        }
        
        if let constant = bottom {
            self.superview!.addConstraint(NSLayoutConstraint(item: self.superview,
                                                             attribute: .bottom,
                                                             relatedBy: .equal,
                                                             toItem: self,
                                                             attribute: .bottom,
                                                             multiplier: 1,
                                                             constant: constant))
        }
        
        if let constant = left {
            self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                             attribute: .left,
                                                             relatedBy: .equal,
                                                             toItem: self.superview,
                                                             attribute: .left,
                                                             multiplier: 1,
                                                             constant: constant))
        }
        
        if let constant = right {
            self.superview!.addConstraint(NSLayoutConstraint(item: self.superview,
                                                             attribute: .right,
                                                             relatedBy: .equal,
                                                             toItem: self,
                                                             attribute: .right,
                                                             multiplier: 1,
                                                             constant: constant))
        }
        
        return self
    }
    
    @discardableResult
    func equalWidthTo(view: UIView) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .width,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .width,
                                                         multiplier: 1,
                                                         constant: 0))
        
        return self
    }
    
    @discardableResult
    func equalHeightTo(view: UIView) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .height,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .height,
                                                         multiplier: 1,
                                                         constant: 0))
        
        return self
    }
    
    @discardableResult
    func pin(aspectRatio: CGFloat) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .height,
                                                         relatedBy: .equal,
                                                         toItem: self,
                                                         attribute: .width,
                                                         multiplier: aspectRatio,
                                                         constant: 0))
        
        return self
    }
    
    @discardableResult
    func pin(size: CGSize) -> UIView {
        
        self.pin(width: size.width)
        self.pin(height: size.height)
        return self
    }
    
    @discardableResult
    func pin(width: CGFloat) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .width,
                                                         relatedBy: .equal,
                                                         toItem: nil,
                                                         attribute: .notAnAttribute,
                                                         multiplier: 1,
                                                         constant: width))
        
        return self
    }
    
    @discardableResult
    func pin(height: CGFloat) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .height,
                                                         relatedBy: .equal,
                                                         toItem: nil,
                                                         attribute: .notAnAttribute,
                                                         multiplier: 1,
                                                         constant: height))
        
        return self
    }
    
    @discardableResult
    func pinToLeftOf(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .right,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .left,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func pinToRightOf(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .left,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .right,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func pinAbove(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .bottom,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .top,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func pinBelow(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: view,
                                                         attribute: .bottom,
                                                         relatedBy: .equal,
                                                         toItem: self,
                                                         attribute: .top,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func alignCenterXTo(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: view,
                                                         attribute: .centerX,
                                                         relatedBy: .equal,
                                                         toItem: self,
                                                         attribute: .centerX,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func alignCenterYTo(view: UIView, constant: CGFloat = 0) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .centerY,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .centerY,
                                                         multiplier: 1,
                                                         constant: constant))
        
        return self
    }
    
    @discardableResult
    func align(_ selfAttribute: NSLayoutAttribute, toView: UIView, attribute: NSLayoutAttribute) -> UIView {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview!.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: selfAttribute,
                                                         relatedBy: .equal,
                                                         toItem: toView,
                                                         attribute: attribute,
                                                         multiplier: 1,
                                                         constant: 0))
        
        return self
    }
    
    @discardableResult
    func alignCenterTo(view: UIView) -> UIView {
        self.alignCenterXTo(view: view)
        self.alignCenterYTo(view: view)
        return self
    }
    
    
    // MARK: UIView property extensions
    
    @discardableResult
    func setCompressionResistance(horizontal: Float? = nil, vertical: Float? = nil) -> UIView {
        
        if let h = horizontal {
            self.setContentCompressionResistancePriority(h, for: .horizontal)
        }
        
        if let v = vertical {
            self.setContentCompressionResistancePriority(v, for: .vertical)
        }
        
        return self
    }
    
    @discardableResult
    func setContentHugging(horizontal: Float? = nil, vertical: Float? = nil) -> UIView {
        
        if let h = horizontal {
            self.setContentHuggingPriority(h, for: .horizontal)
        }
        
        if let v = vertical {
            self.setContentHuggingPriority(v, for: .vertical)
        }
        
        return self
    }
}



public extension UIImageView {
    
    @discardableResult
    func pinImageAspectRatio() -> UIImageView {
        
        if (self.image != nil && self.image!.size.width != 0) {
            self.pin(aspectRatio: self.image!.size.height / self.image!.size.width)
        }
        
        return self
    }
    
}
