//
//  ViewController.swift
//  vababushkinPW1
//
//  Created by Вова Бабушкин on 14.10.2024.
//

import UIKit


// MARK: - viewController class
class ViewController: UIViewController {

    // MARK: - array of changable views outlet
    @IBOutlet var views: [UIView]!
    
    // MARK: - button outlet
    @IBOutlet weak var button: UIButton!
    
    
    // MARK: - view did load func
    override func viewDidLoad() {
        super.viewDidLoad()
        changeView.colors(views: views, button: button)
        changeView.radius(views: views, button: button)
    }
    
    // MARK: - on button pressed action
    @IBAction func buttonWasPressed(_ sender: Any) {
        button?.isEnabled = false
        changeView.colors(views: views, button: button)
        changeView.radius(views: views, button: button)
    }
    

}

