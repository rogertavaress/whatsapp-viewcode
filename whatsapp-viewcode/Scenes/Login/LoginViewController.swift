//
//  LoginViewController.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 07/07/22.
//

import UIKit
import AuthenticationServices

class LoginViewController: UIViewController {

    lazy var mainStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "FireChat"
        label.font = .boldSystemFont(ofSize: 48)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var loginAreaView: UIStackView = {
        let stackView = UIStackView()
//        stackView.backgroundColor = .black
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var emailTextField: CustomTextField = {
        let textField = CustomTextField(frame: .zero)
        textField.setLabel("Email:")
        textField.setPlaceholder("example@email.com")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    lazy var passwordTextField: CustomTextField = {
        let textField = CustomTextField(frame: .zero)
        textField.setLabel("Senha:")
        textField.setPlaceholder("******")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Criar uma conta", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        addSubViews()
        configureSubViews()
    }
    
    private func configureView() {
        if let backgroundImage = UIImage(named: "background") {
            let newImage = backgroundImage.resizeImage(view.frame.height, opaque: false)
            view.backgroundColor = UIColor(patternImage: newImage)
        } else {
            view.backgroundColor = .white
        }
    }
    
    private func addSubViews() {
        view.addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(loginAreaView)
        
        loginAreaView.addArrangedSubview(emailTextField)
        loginAreaView.addArrangedSubview(passwordTextField)
        loginAreaView.addArrangedSubview(loginButton)
        loginAreaView.addArrangedSubview(registerButton)
    }
    
    private func configureSubViews() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            mainStackView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -50),
            mainStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            emailTextField.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, constant: -40),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            passwordTextField.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, constant: -40),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            registerButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, constant: -40),
            registerButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
