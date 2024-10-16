//
//  ViewController.swift
//  seminar 3
//
//  Created by Вова Бабушкин on 15.10.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let button = CustomButton(frame: .init(x: 200, y: 200, width: 200, height: 200))
        view.addSubview(button)
        
        // Do any additional setup after loading the view.
    }
    
    


}

