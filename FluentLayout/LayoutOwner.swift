import Foundation


/*
 For Views that have a layout object. Allows use of extension methods for easier
 access to the layout object
 */
public protocol LayoutOwner {
    
    var layout: Layout { get set }
    
}
