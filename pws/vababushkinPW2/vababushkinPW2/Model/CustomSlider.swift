//
//  CustomSlider.swift
//  vababushkinPW2
//
//  Created by Вова Бабушкин on 05.11.2024.
//

import Foundation
import UIKit

// MARK: enumeration of constants in custom slider class
enum SliderConstants {
    static let titleTopAnchor: CGFloat = 10
    static let titleLeadingAnchor: CGFloat = 20
    static let sliderButtomAnchor: CGFloat = 10
    static let sliderLeadingAnchor: CGFloat = 20
}

// MARK: custom slider class
final class CustomSlider: UIView {
    
    // MARK: function that will be running on moving slider.
    var valueChanged: ((Double) -> Void)?
    
    // MARK: slider variable
    var slider = UISlider()
    
    // MARK: title label
    var titleView = UILabel()
    
    // MARK: constructor of custom slider
    init(title: String, min: Double, max: Double) {
        super.init(frame: .zero)
        titleView.text = title
        slider.minimumValue = Float(min)
        slider.maximumValue = Float(max)
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        configureUI()
    }
    
    // MARK: compiler requires init?, so I make it unavailable
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    // MARK: configuration of slider elements
    private func configureUI() {
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        for view in [slider, titleView] {
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        titleView.pinCenterX(to: centerXAnchor)
        titleView.pinTop(to: topAnchor, SliderConstants.titleTopAnchor)
        titleView.pinLeft(to: leadingAnchor, SliderConstants.titleLeadingAnchor)
        
        slider.pinTop(to: titleView.bottomAnchor)
        slider.pinCenterX(to: centerXAnchor)
        slider.pinBottom(to: bottomAnchor, SliderConstants.sliderButtomAnchor)
        slider.pinLeft(to: leadingAnchor, SliderConstants.sliderLeadingAnchor)
    }
    
    // MARK: Catching moving of slider
    @objc
    private func sliderValueChanged() {
        valueChanged?(Double(slider.value))
        
    }
}
