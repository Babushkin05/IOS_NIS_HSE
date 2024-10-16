//
//  UIColorExtension.swift
//  vababushkinPW1
//
//  Created by Вова Бабушкин on 15.10.2024.
//

import Foundation
import UIKit

// MARK: - extension for random color for UIColor
extension UIColor{
    // MARK: - return random UIColor
    static func randomColor(redRange: ClosedRange<CGFloat> = 0...1,
                            greenRange: ClosedRange<CGFloat> = 0...1,
                            blueRange: ClosedRange<CGFloat> = 0...1) -> UIColor {
        return UIColor(
            red: .random(in: redRange),
            green: .random(in: greenRange),
            blue: .random(in: blueRange),
            alpha: 1
        )
    }
}
