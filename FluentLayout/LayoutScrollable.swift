import Foundation


open class LayoutScrollable: UIScrollView, LayoutOwner {
    
    // From LayoutOwner protocol
    public var layout: Layout = Layout()
    
    // ScrollView content view
    let contentView = UIView()
    
    // Contraints for the layout. Modified by layoutInsets
    var topConstraint: NSLayoutConstraint? = nil
    var bottomConstraint: NSLayoutConstraint? = nil
    var leftConstraint: NSLayoutConstraint? = nil
    var rightConstraint: NSLayoutConstraint? = nil
    
    
    
    public init() {
        super.init(frame: .zero)
        initializeView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    public var _layoutInsets: UIEdgeInsets = LayoutDefaults.padding
    public var layoutInsets: UIEdgeInsets {
        set {
            _layoutInsets = newValue
            applyLayoutInsets()
        }
        get {
            return _layoutInsets
        }
    }
    
    
    
    private func initializeView() {
        
        contentView.backgroundColor = .clear
        backgroundColor = LayoutDefaults.backgroundColor
        
        addSubview(contentView)
        contentView.addSubview(layout)
        
        contentView.pinToSuperview(top: 0, bottom: 0, left: 0, right: 0)
            .equalWidthTo(view: self)
        
        layout.translatesAutoresizingMaskIntoConstraints = false
        
        topConstraint = NSLayoutConstraint(item: layout,
                                           attribute: .top,
                                           relatedBy: .equal,
                                           toItem: contentView,
                                           attribute: .top,
                                           multiplier: 1,
                                           constant: layoutInsets.top)
        
        bottomConstraint = NSLayoutConstraint(item: contentView,
                                              attribute: .bottom,
                                              relatedBy: .greaterThanOrEqual,
                                              toItem: layout,
                                              attribute: .bottom,
                                              multiplier: 1,
                                              constant: layoutInsets.bottom)
        
        leftConstraint = NSLayoutConstraint(item: layout,
                                            attribute: .left,
                                            relatedBy: .equal,
                                            toItem: contentView,
                                            attribute: .left,
                                            multiplier: 1,
                                            constant: layoutInsets.left)
        
        rightConstraint = NSLayoutConstraint(item: contentView,
                                             attribute: .right,
                                             relatedBy: .equal,
                                             toItem: layout,
                                             attribute: .right,
                                             multiplier: 1,
                                             constant: layoutInsets.right)
        
        contentView.addConstraints([topConstraint!, bottomConstraint!, leftConstraint!, rightConstraint!])
    }
    
    private func applyLayoutInsets() {
        topConstraint?.constant = layoutInsets.top
        bottomConstraint?.constant = layoutInsets.bottom
        leftConstraint?.constant = layoutInsets.left
        rightConstraint?.constant = layoutInsets.right
    }
    
    public func addSection(title: String? = nil, create: ((LayoutSection) -> Void)? = nil) {
        layout.addSection(title: title, create: create)
    }
}
