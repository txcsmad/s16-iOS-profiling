import Foundation
import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    static func randomIn(start: CGFloat, end: CGFloat) -> CGFloat {
        let delta = end - start
        return start + random() * delta
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        let r = CGFloat.random()
        let g = CGFloat.random()
        let b = CGFloat.random()
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}