import Foundation



internal class LayoutDefaultControlCreator: LayoutDefaultControls {
    
    func createLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFontWeightLight)
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        return label
    }
    
    func createTitleLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightRegular)
        return label
    }
    
    func createTextField() -> UITextField {
        let textField = LayoutTextField()
        textField.backgroundColor = UIColor(colorLiteralRed: 0.94, green: 0.94, blue: 0.94, alpha: 1.0)
        textField.layer.cornerRadius = 4
        return textField
    }
    
    func createButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .gray
        button.layer.cornerRadius = 4
        button.setTitleColor(.white, for: .normal)
        return button
    }
    
    func createTextView() -> UITextView {
        let textView = UITextView()
        textView.backgroundColor = UIColor(colorLiteralRed: 0.94, green: 0.94, blue: 0.94, alpha: 1.0)
        textView.layer.cornerRadius = 4
        return textView
    }
    
    func createImage() -> UIImageView {
        return UIImageView()
    }
    
}




private class LayoutTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}
