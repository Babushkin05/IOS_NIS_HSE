//
//  UIView+Pin.swift
//  seminar2
//
//  Created by Вова Бабушкин on 08.10.2024.
//

import UIKit

extension UIView {
    func pinTop(_ otherView: UIView,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: otherView.topAnchor, constant: const).isActive = true
    }
    func pinTop(_ anchor: NSLayoutYAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: anchor, constant: const).isActive = true
    }
    
    func pinBottom(_ otherView: UIView,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        bottomAnchor.constraint(equalTo: otherView.bottomAnchor, constant: -1 * const).isActive = true
    }
    func pinBottom(_ anchor: NSLayoutYAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        bottomAnchor.constraint(equalTo: anchor, constant: -1 * const).isActive = true
    }
    
    func pinLeft(_ otherView: UIView,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: otherView.leadingAnchor, constant: const).isActive = true
    }
    func pinLeft(_ anchor: NSLayoutXAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: anchor, constant: const).isActive = true
    }
    
    func pinRight(_ otherView: UIView,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        trailingAnchor.constraint(equalTo: otherView.trailingAnchor, constant: -1 * const).isActive = true
    }
    func pinRight(_ anchor: NSLayoutXAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        trailingAnchor.constraint(equalTo: anchor, constant: -1 * const).isActive = true
    }
    
    func pinCenterY(_ otherView: UIView,  _ const: Double = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: otherView.centerYAnchor, constant: const).isActive = true
    }
    func pinCenterY(_ anchor: NSLayoutYAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: anchor, constant: const).isActive = true
    }
    func pinCenterX(_ otherView: UIView,  _ const: Double = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: otherView.centerXAnchor, constant: const).isActive = true
    }
    func pinCenterX(_ anchor: NSLayoutXAxisAnchor,  _ const: Double = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: anchor, constant: const).isActive = true
    }
    
    func pinCenter(_ anchorX: NSLayoutXAxisAnchor, _ anchorY: NSLayoutYAxisAnchor) {
        pinCenterX(anchorX)
        pinCenterY(anchorY)
    }
    func pinCenter(_ otherView: UIView) {
        pinCenterX(otherView)
        pinCenterY(otherView)
    }
    
    @discardableResult
    func setWidth(_ constant: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: constant).isActive = true
        var constraint =  widthAnchor.constraint(equalToConstant: constant).isActive = true
        return constraint
    }
    
    func setHeight(_ constant: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: constant).isActive = true
    }
    
    func setSize(_ width: Double, _ height: Double = 1){
        setWidth(width)
        setHeight(height)
    }
    
    func pinWidth(_ dimension: NSLayoutDimension, _ mult: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: dimension, multiplier: mult).isActive = true
    }
    
    func pinWidth(_ otherView: UIView, mult: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: otherView.widthAnchor, multiplier: mult).isActive = true
    }
    
    func pinHeight(_ dimension: NSLayoutDimension, _ mult: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: dimension, multiplier: mult).isActive = true
    }
    
    func pinHeight(_ otherView: UIView, mult: Double = 1) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: otherView.heightAnchor, multiplier: mult).isActive = true
    }
    
    
}
