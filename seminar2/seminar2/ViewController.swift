import UIKit

final class ViewController: UIViewController {
    typealias Time = UInt
    
    // MARK: - Model
    struct Model {
        var title: String
    }
    
    // MARK: - Constants
    private enum Constants {
        static let offset: Double = 20
    }
    
    // MARK: - variables
    private var somePrivateVariable = 4
    private var button = UIButton(type: .system)
    
    
    static var classname: String {
        get {
            return "\(Self.Type.self)"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.pinCenter(view)
        var constraint  = button.setWidth(200)
        UIView.animate(withDuration: 2){
            constraint.constant = 300
        }
        button.setHeight(100)
        button.backgroundColor = .red
    }
    
    // MARK: - Methods
    func someFunc() {
        
    }
    
    
    // MARK: - actions
    @objc
    func buttonPressed() {
        
    }
    // MARK: - private funcs
    private func somePrivate() {
        
    }
}

// MARK: - extension
extension ViewController: UICollectionViewDelegate{
    
}

