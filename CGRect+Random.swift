import Foundation
import UIKit

extension CGRect {
    
    static func randomWithin(bounds: CGRect) -> CGRect {
        let x = CGFloat.randomIn(bounds.origin.x, end: bounds.origin.x + bounds.width)
        let y = CGFloat.randomIn(bounds.origin.y, end: bounds.origin.y + bounds.height)

        let width = CGFloat.randomIn(0, end: bounds.width - x)
        let height = CGFloat.randomIn(0, end: bounds.width - y)
        return CGRect(x: x, y: y, width: width, height: height)
    }
}