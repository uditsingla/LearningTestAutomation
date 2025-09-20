//
//  LoginRobot.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest
@testable import IntegrationTestDemo

class LoginRobot {
    
    private let app: XCUIApplication = XCUIApplication()
    private lazy var loginPage = LoginPage(app: app)

    func launch() -> LoginRobot{
        app.launch()
        return self
    }
    
    func login(username: String, password: String) -> LoginRobot{
        app.launch()
        _ = loginPage.enterUsername(username: username)
        _ = loginPage.enterPassword(password: password)
        _ = loginPage.clkLoginButton()
        return self
    }
    
    func verifySuccessLogin() -> LoginRobot{
       _ = loginPage.assertLoginSuccess()
        return self
    }
    
    func verifyLoginFail() -> LoginRobot{
       _ = loginPage.assertLoginFailure()
        return self
    }
}
