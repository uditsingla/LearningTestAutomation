//
//  ViewController.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let usernameField = UITextField()
    private let passwordField = UITextField()
    private let loginButton = UIButton(type: .system)
    private let lblSuccessMessage: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    func setUpUI(){
        
        lblSuccessMessage.textColor = .red
        lblSuccessMessage.accessibilityIdentifier = "lblSuccessMessage"
        
        usernameField.placeholder = "Username"
        usernameField.accessibilityIdentifier = "usernameField"

                passwordField.placeholder = "Password"
                passwordField.isSecureTextEntry = true
                passwordField.accessibilityIdentifier = "passwordField"

                loginButton.setTitle("Login", for: .normal)
                loginButton.accessibilityIdentifier = "loginButton"
                loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        

        let stack = UIStackView(arrangedSubviews: [lblSuccessMessage, usernameField, passwordField, loginButton])
                stack.axis = .vertical
                stack.spacing = 16
                stack.translatesAutoresizingMaskIntoConstraints = false

                view.addSubview(stack)
                NSLayoutConstraint.activate([
                    stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    stack.widthAnchor.constraint(equalToConstant: 200)
                ])
    }

    @objc private func handleLogin() {
        let dashboardVC = DashboardViewController()
        if usernameField.text == "abhi" && passwordField.text == "123456" {
            lblSuccessMessage.text = "Login successful"
            //navigationController?.pushViewController(dashboardVC, animated: true)
        } else {
            lblSuccessMessage.text = "Invalid login creds"
        }
      }
}

