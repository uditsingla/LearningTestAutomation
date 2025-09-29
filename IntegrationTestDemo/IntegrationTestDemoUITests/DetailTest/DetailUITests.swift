//
//  DetailUITests.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 24/09/25.
//

import XCTest
@testable import IntegrationTestDemo

final class DetailUITests: BaseTest {

    func testDetailScreenNavigation() {
        _ = LoginRobot(app: app)
            .login(username: "abhi", password: "123456")
            .verifySuccessLogin()

        _ = DashboardRobot(app: app)
            .assertDashboardTitle()
            .navigateToDetails()

        _ = DetailRobot(app: app)
            .assertDetailTitle()
    }
}
