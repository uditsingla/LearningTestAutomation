//
//  LoginUITest.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest
@testable import IntegrationTestDemo

final class LoginUITest: XCTestCase {
 
    func testLoginSuccess() {
        _ = LoginRobot()
            .launch()
            .login(username: "abhi", password: "123456")
            .verifySuccessLogin()
    }
    
    func testLoginFailure() {
        _ = LoginRobot()
            .launch()
            .login(username: "abhishek", password: "12345")
            .verifyLoginFail()
    }
}
