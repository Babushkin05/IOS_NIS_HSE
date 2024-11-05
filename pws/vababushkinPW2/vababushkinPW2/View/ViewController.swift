//
//  ViewController.swift
//  vababushkinPW2
//
//  Created by Вова Бабушкин on 05.11.2024.
//

import UIKit

// MARK: class for views
class WishMakerViewController: UIViewController {
    
    // MARK: color variable
    var backgroundColor: SimpleColor = SimpleColor()
    
    // MARK: view did load func
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: configure user interface
    private func configureUI() {
        view.backgroundColor = backgroundColor.getUIColor()
        
        configureTitle()
        configureDescription()
        configureSliders()
    }
    
    // MARK: title configuration
    private func configureTitle() {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "WishMaker"
        
        
        title.font = UIFont.systemFont(ofSize: ViewConstollerConstants.titleFont)  
        view.addSubview(title)
        
        title.pinCenterX(to: view.centerXAnchor)
        title.pinLeft(to: view.leadingAnchor, ViewConstollerConstants.titleLeft)
        title.pinTop(to: view.safeAreaLayoutGuide.topAnchor, ViewConstollerConstants.titleTop)
        
    }
    
    // MARK: description configuration
    private func configureDescription() {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.text = ViewConstollerConstants.descrText
        description.font = UIFont.systemFont(ofSize: ViewConstollerConstants.descrFont)  
        view.addSubview(description)
        
        description.pinCenterX(to: view.centerXAnchor)
        description.pinLeft(to: view.leadingAnchor, ViewConstollerConstants.descrLeft)
        description.pinTop(to: view.safeAreaLayoutGuide.topAnchor, ViewConstollerConstants.descrTop)
    }
    
    // MARK: sliders configuration
    private func configureSliders() {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        view.addSubview(stack)
        stack.layer.cornerRadius = ViewConstollerConstants.stackRadius
        stack.clipsToBounds = true
        
        let sliderRed = CustomSlider(title: ViewConstollerConstants.Red, min: ViewConstollerConstants.minColor, max: ViewConstollerConstants.maxColor)
        let sliderBlue = CustomSlider(title: ViewConstollerConstants.Blue, min: ViewConstollerConstants.minColor, max: ViewConstollerConstants.maxColor)
        let sliderGreen = CustomSlider(title: ViewConstollerConstants.Green, min: ViewConstollerConstants.minColor, max: ViewConstollerConstants.maxColor)
        
        for slider in [sliderRed, sliderBlue, sliderGreen] {
            stack.addArrangedSubview(slider)
        }
        
        stack.pinCenterX(to: view.centerXAnchor)
        stack.pinLeft(to: view.leadingAnchor, ViewConstollerConstants.stackLeft)
        stack.pinBottom(to: view.bottomAnchor, ViewConstollerConstants.stackButtom)
        
        sliderRed.valueChanged = { [weak self] value in
            self?.backgroundColor.red = value
            self?.view.backgroundColor = self?.backgroundColor.getUIColor()
        }
        sliderBlue.valueChanged = { [weak self] value in
            self?.backgroundColor.blue = value
            self?.view.backgroundColor = self?.backgroundColor.getUIColor()
        }
        sliderGreen.valueChanged = { [weak self] value in
            self?.backgroundColor.green = value
            self?.view.backgroundColor = self?.backgroundColor.getUIColor()
        }
        
    }
    
}

