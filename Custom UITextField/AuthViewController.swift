//
//  AuthViewController.swift
//  Custom UITextField
//
//  Created by Nikita on 21/1/23.
//

import UIKit

/// Main controller for showing text field
final class AuthViewController: UIViewController {
    
    // MARK: - private properties
    private let registerTextField = RegisterTextField(
        placeholder: "Enter your name here...",
        forgroundColor: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1),
        textColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
        textFontSize: 20,
        cornerRadius: 5,
        backgroundColor: #colorLiteral(red: 1, green: 0.3430038691, blue: 0, alpha: 1),
        shadowColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),
        shadowRadius: 10,
        shadowOpacity: 1,
        shadowOffset: CGSize(width: 4, height: 4),
        height: 60
    )
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setupView()
    }
}

// MARK: - view's settings
private extension AuthViewController {
    
    func setupView() {
        
        addSubviews()
        setupLayout()
    }
}

// MARK: - settings
private extension AuthViewController {
    
    func addSubviews() {
        view.addSubview(registerTextField)
    }
}

// MARK: - layout's settings
private extension AuthViewController {
    
    func setupLayout() {
        
        // Objects:
        registerTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints:
        NSLayoutConstraint.activate([
            
            registerTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            registerTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
    }
}
