import Foundation


/*
 There are views that own a layout object. Without these they would have to do .layout
 Having them as extensions centralizes them.
 As of now these are used by LayoutScrollable and LayoutSection
 
 Note: addSection is not in here on purpose. As of now seems useless
 to have the sections be able to add sections
 */
extension LayoutOwner {
    
    public func create(axis: UILayoutConstraintAxis = .vertical, alignment: UIStackViewAlignment = .fill, distribution: UIStackViewDistribution = .fill, spacing: CGFloat = LayoutDefaults.spacing, create: ((Layout) -> Void)?) {
        self.layout.create(axis: axis, alignment: alignment, distribution: distribution, spacing: spacing, create: create)
    }
    
    @discardableResult
    public func add<TView: UIView>(view: TView) -> TView {
        return self.layout.add(view: view)
    }
    
    @discardableResult
    public func addLabel(text: String) -> UILabel {
        return self.layout.addLabel(text: text)
    }
    
    @discardableResult
    public func addTitleLabel(text: String) -> UILabel {
        return self.layout.addTitleLabel(text: text)
    }
    
    @discardableResult
    public func addTextField() -> UITextField {
        return self.layout.addTextField()
    }
    
    @discardableResult
    public func addStack(axis: UILayoutConstraintAxis = .horizontal, alignment: UIStackViewAlignment = .fill, distribution: UIStackViewDistribution = .fill, spacing: CGFloat = 8, create: ((Layout) -> Void)?) -> Layout {
        return self.layout.addStack(axis: axis, alignment: alignment, distribution: distribution, spacing: spacing, create: create)
    }
    
    @discardableResult
    public func addButton(title: String) -> UIButton {
        return self.layout.addButton(title: title)
    }
    
    @discardableResult
    public func addImage(named: String? = nil) -> UIImageView {
        return self.layout.addImage(named: named)
    }
    
    @discardableResult
    public func addTextView() -> UITextView {
        return self.layout.addTextView()
    }
}
