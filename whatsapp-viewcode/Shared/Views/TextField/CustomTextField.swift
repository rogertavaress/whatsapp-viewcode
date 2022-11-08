//
//  CustomTextField.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 13/07/22.
//

import UIKit

class CustomTextField: UIStackView {
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        
        self.addArrangedSubview(label)
        self.addArrangedSubview(textField)
        
        configureView()
        configureSubViews()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setPlaceholder(_ text: String) {
        textField.placeholder = text
    }
    
    public func setLabel(_ text: String) {
        label.text = text
    }
    
    private func configureView() {
        self.axis = .vertical
        self.alignment = .leading
    }
    
    private func configureSubViews() {
        NSLayoutConstraint.activate([
            textField.widthAnchor.constraint(equalTo: self.widthAnchor),
            textField.heightAnchor.constraint(equalToConstant: 40)
        ])
        NSLayoutConstraint.activate([
            label.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
