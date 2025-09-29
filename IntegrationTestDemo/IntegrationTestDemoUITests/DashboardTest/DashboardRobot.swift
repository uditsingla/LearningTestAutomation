
//
//  Untitled.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest

class DashboardRobot {
    
    private let app: XCUIApplication
    private lazy var dashboardPage = DashboardPage(app: app)

    init(app: XCUIApplication) {
        self.app = app
    }

    func assertDashboardTitle() -> DashboardRobot {
        _ = dashboardPage.assertDashboardTitle()
        return self
    }
    
    func navigateToDetails() -> DashboardRobot {
        _ = dashboardPage.clkGoToDetails()
        return self
    }
}
