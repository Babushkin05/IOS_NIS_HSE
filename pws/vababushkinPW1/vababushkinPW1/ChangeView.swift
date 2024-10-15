//
//  ChangeView.swift
//  vababushkinPW1
//
//  Created by Вова Бабушкин on 15.10.2024.
//

import Foundation
import UIKit

// MARK: -  additional class for decomposition
class changeView {
    
    // MARK: - duration of changing animation
    private static let duration: CGFloat = 0.2
    
    // MARK: - returns array of unique colors
    private static func getUniqueColors(len: Int) -> [UIColor] {
        
        // MARK: - colors range parameters
        let redRange: ClosedRange<CGFloat> = 0.3...1
        let greenRange: ClosedRange<CGFloat> = 0...0.4
        let blueRange: ClosedRange<CGFloat> = 0.3...1
        
        var set = Set<UIColor>()
        while set.count < len {
            set.insert(
                UIColor.randomColor(redRange: redRange,
                                    greenRange: greenRange,
                                    blueRange: blueRange)
            )
        }
        
        return Array(set)
    }
    
    // MARK: - change colors of views
    static func colors(views: [UIView], button: UIButton?) {
        let colors = getUniqueColors(len: views.count)
        for i in 0..<views.count {
            UIView.animate(
                withDuration: duration,
                animations: {
                    views[i].backgroundColor = colors[i]
                },
                completion: {  _ in
                    button?.isEnabled = true
                }
            )
        }
    }
    
    // MARK: - change form of views
    static func radius(views: [UIView], button: UIButton?) {
        // MARK: - radius range parametr.
        let radiusRange: ClosedRange<CGFloat> = 0...100
        
        for view in views {
            UIView.animate(withDuration: duration,
                animations: {
                view.layer.cornerRadius = .random(in: radiusRange)
                },
                completion: {  _ in
                    button?.isEnabled = true
                }
            )
        }
    }
}
