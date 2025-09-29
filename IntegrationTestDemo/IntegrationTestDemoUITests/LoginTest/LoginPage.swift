//
//  LoginPage.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest
struct LoginPage {
    
    let app : XCUIApplication
    
    var lblLoginStatus : XCUIElement {
        app.staticTexts["lblSuccessMessage"]
    }
    var usernameTextField : XCUIElement {
         app.textFields["usernameField"]
    }
    
    var passwordTextField : XCUIElement {
         app.secureTextFields["passwordField"]
    }
    
    var loginButton : XCUIElement {
        app.buttons["loginButton"]
    }
    
//    var lButton: XCUIElement {
//        app.buttons.matching(NSPredicate(format: "label CONTAINS 'Login'")).firstMatch
//    }
    
    //    var lButton: XCUIElement {
    //        app.buttons.matching(NSPredicate(format: "label CONTAINS 'Login'")).firstMatch
    //    }
    
    
    var lblDashboard : XCUIElement {
        app.staticTexts["dashboardlabel"]
    }
    
    func enterUsername(username: String) -> LoginPage {
        usernameTextField.tap()
        usernameTextField.typeText(username)
        return self
    }
    
    func enterPassword(password: String) -> LoginPage {
        passwordTextField.tap()
        passwordTextField.typeText(password)
        return self
    }
    
    func clkLoginButton() -> LoginPage {
        loginButton.tap()
        return self
    }
    
    func assertLoginSuccess() -> LoginPage {
        WaitHelper.waitForElementToAppear(lblDashboard)
        XCTAssertEqual(lblDashboard.label, "Welcome to Dashboard!")
        return self
    }
    
    func assertLoginFailure() -> LoginPage {
        WaitHelper.waitForElementToAppear(lblLoginStatus)
        XCTAssertEqual(lblLoginStatus.label, "Invalid login creds")
        return self
    }
}

