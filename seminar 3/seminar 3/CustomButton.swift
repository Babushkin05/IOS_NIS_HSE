//
//  CustomButton.swift
//  seminar 3
//
//  Created by Вова Бабушкин on 15.10.2024.
//

extension UIView {

    public var height: CGFloat {
        get

        
        add
        
        
        
    }
    
    @objc private func buttonPressed(_ sender: Any){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       options: AnimationOptions.autoreverse,
                       animations: {
            self.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.backgroundColor = UIColor.randomColor()
        })
    }
}
