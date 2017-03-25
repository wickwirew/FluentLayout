//
//  Layout.swift
//  SimpleLayout
//
//  Created by Wes on 3/22/17.
//  Copyright © 2017 FromBordem. All rights reserved.
//

import Foundation


open class Layout: UIStackView {
        
    public init() {
        super.init(frame: .zero)
        initializeView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func initializeView() {
        
        axis = .vertical
        alignment = .fill
        distribution = .fill
        spacing = LayoutDefaults.spacing
    }
    
    
    // Serves no other purpose as a syntax helper
    public func create(axis: UILayoutConstraintAxis = .vertical, alignment: UIStackViewAlignment = .fill, distribution: UIStackViewDistribution = .fill, spacing: CGFloat = LayoutDefaults.spacing, create: ((Layout) -> Void)?) {
        
        self.axis = axis
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
        
        if let c = create {
            c(self)
        }
    }
    
    
    
    // MARK: Sections
    
    public func addSection(title: String? = nil, axis: UILayoutConstraintAxis = .vertical, alignment: UIStackViewAlignment = .fill, distribution: UIStackViewDistribution = .fill, spacing: CGFloat = LayoutDefaults.sectionSpacing, create: ((LayoutSection) -> Void)? = nil) {
        
        let section = LayoutSection()
        section.layout.axis = axis
        section.layout.alignment = alignment
        section.layout.distribution = distribution
        section.layout.spacing = spacing
        
        if let t = title {
            section.addTitleLabel(text: t)
        }
        
        if let c = create {
            c(section)
        }
        
        addArrangedSubview(section)
    }
    
    
    
    
    // MARK: UI Components
    
    @discardableResult
    public func add<TView: UIView>(view: TView) -> TView {
        
        addArrangedSubview(view)
        return view
    }
    
    @discardableResult
    public func addLabel(text: String) -> UILabel {
        
        let label = LayoutDefaults.defaultControls.createLabel()
        label.text = text
        addArrangedSubview(label)
        return label
    }
    
    @discardableResult
    public func addTitleLabel(text: String) -> UILabel {
        
        let label = LayoutDefaults.defaultControls.createTitleLabel()
        label.text = text
        return add(view: label)
    }
    
    @discardableResult
    public func addTextField(text: String? = nil, placeholder: String? = nil) -> UITextField {
        
        let field = LayoutDefaults.defaultControls.createTextField()
        field.text = text
        field.placeholder = placeholder
        return add(view: field)
    }
    
    @discardableResult
    public func addButton(title: String? = nil, image: String? = nil) -> UIButton {
        
        let button = LayoutDefaults.defaultControls.createButton()
        
        if let t = title {
            button.setTitle(t, for: .normal)
        }
        
        if let i = image {
            button.setImage(UIImage(named: i), for: .normal)
        }
        
        return add(view: button)
    }
    
    @discardableResult
    public func addImage(named: String? = nil, contentMode: UIViewContentMode = .scaleAspectFit) -> UIImageView {
        
        let image = LayoutDefaults.defaultControls.createImage()
        image.contentMode = contentMode
        add(view: image)
        
        if let i = named {
            image.image = UIImage(named: i)
        }
        
        return image
    }
    
    @discardableResult
    public func addTextView() -> UITextView {
        
        let text = LayoutDefaults.defaultControls.createTextView()
        return add(view: text)
    }
    
    @discardableResult
    public func addFelxibleSpacing() -> UIView {
        
        let spacing = UIView()
        spacing.clipsToBounds = true
        spacing.backgroundColor = .clear
        spacing.setContentCompressionResistancePriority(1, for: .horizontal)
        spacing.setContentCompressionResistancePriority(1, for: .vertical)
        return add(view: spacing)
    }
    
    
    
    
    // MARK: Stacks
    
    @discardableResult
    public func addStack(axis: UILayoutConstraintAxis = .horizontal, alignment: UIStackViewAlignment = .fill, distribution: UIStackViewDistribution = .fill, spacing: CGFloat = LayoutDefaults.spacing, create: ((Layout) -> Void)?) -> Layout {
        
        let group = Layout()
        group.axis = axis
        group.alignment = alignment
        group.distribution = distribution
        group.spacing = spacing
        add(view: group)
        
        if let c = create {
            c(group)
        }
        
        return group
    }
}
