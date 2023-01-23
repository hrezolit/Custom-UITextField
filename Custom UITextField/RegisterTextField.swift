//
//  RegisterTextField.swift
//  Custom UITextField
//
//  Created by Nikita on 21/1/23.
//

import UIKit

/// Register text field
final class RegisterTextField: UITextField {
    
    // MARK: - private properties:
    private let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 40)
    
    /// Main initializer
    /// - Parameter placeholder: placeholder for text field
    init(
        placeholder: String,
        forgroundColor: UIColor,
        textColor: UIColor,
        textFontSize: CGFloat,
        cornerRadius: CGFloat,
        backgroundColor: CGColor,
        shadowColor: CGColor,
        shadowRadius: CGFloat,
        shadowOpacity: Float,
        shadowOffset: CGSize,
        height: CGFloat
    ) {
        super.init(frame: .zero)
        
        setupTextField(
            placeholder: placeholder,
            forgroundColor: forgroundColor,
            txtColor: textColor,
            textFontSize: textFontSize,
            cornerRadius: cornerRadius,
            backgroundColor: backgroundColor,
            shadowColor: shadowColor,
            shadowRadius: shadowRadius,
            shadowOpacity: shadowOpacity,
            shadowOffset: shadowOffset,
            height: height
        )
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - text area
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    // MARK: - placeholder text area
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    // MARK: - writing text area
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    // MARK: - Private methods:
    /// Setup text field
    /// - Parameter placeholder: placeholder for text field
    private func setupTextField(placeholder: String, forgroundColor: UIColor, txtColor: UIColor, textFontSize: CGFloat, cornerRadius: CGFloat, backgroundColor: CGColor, shadowColor: CGColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffset: CGSize, height: CGFloat) {
        
        self.textColor = txtColor
        
        layer.cornerRadius = cornerRadius
        layer.backgroundColor = backgroundColor
        
        layer.shadowColor = shadowColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = shadowOffset
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: forgroundColor])
        font = .boldSystemFont(ofSize: textFontSize)
        
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
}
