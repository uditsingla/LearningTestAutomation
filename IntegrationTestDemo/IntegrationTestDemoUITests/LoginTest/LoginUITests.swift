//
//  LoginUITest.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest
@testable import IntegrationTestDemo

final class LoginUITest: BaseTest {

    func testLoginSuccess() {
        _ = LoginRobot(app: app)
            .login(username: "abhi", password: "123456")
            .verifySuccessLogin()
    }

    func testLoginFailure() {
        _ = LoginRobot(app: app)
            .login(username: "abhishek", password: "12345")
            .verifyLoginFail()
    }
}
