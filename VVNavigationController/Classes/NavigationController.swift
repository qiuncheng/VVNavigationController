import UIKit


public extension UIViewController {
    
    private struct Keys {
        static let canBeginPopGesture: UnsafeRawPointer = UnsafeRawPointer(bitPattern: "UIViewController.canBeginPopGesture".hashValue)!
    }
    
    var canBeginPopGesture: Bool {
        get {
            let value = objc_getAssociatedObject(self, Keys.canBeginPopGesture) as? Bool
            return value ?? true
        }
        
        set {
            objc_setAssociatedObject(self, Keys.canBeginPopGesture, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

@IBDesignable
open class VVNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    open var fullScreenPanGesture: UIPanGestureRecognizer? {
        return panGesture
    }
    
    private var panGesture: UIPanGestureRecognizer?
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        let target = super.interactivePopGestureRecognizer?.delegate
        let selector = NSSelectorFromString("handleNavigationTransition:")
        let gestureView = interactivePopGestureRecognizer?.view
        if target?.responds(to: selector) == true {
            let panGesture = UIPanGestureRecognizer(target: target, action: selector)
            panGesture.delegate = self
            gestureView?.addGestureRecognizer(panGesture)
            self.panGesture = panGesture
            interactivePopGestureRecognizer?.isEnabled = false
        }
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == panGesture {
            if children.first == topViewController {
                return false
            } else {
                return topViewController?.canBeginPopGesture ?? true
            }
        }
        return true
    }
}
