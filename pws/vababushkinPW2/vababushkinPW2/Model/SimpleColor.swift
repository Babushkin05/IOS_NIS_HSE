//
//  ChangingColor.swift
//  vababushkinPW2
//
//  Created by Вова Бабушкин on 05.11.2024.
//

import Foundation
import UIKit

// MARK: simple color structure
struct SimpleColor{
    public var red: CGFloat = 0
    public var green: CGFloat = 0
    public var blue: CGFloat = 255
    public func getUIColor() -> UIColor{
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}



