
//
//  Untitled.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest

class DashboardRobot {
    private let app: XCUIApplication
    
    var flowButton: XCUIElement { app.buttons["flowButton"] }
    var welcomeLabel: XCUIElement { app.staticTexts["dashboardlabel"] }

    init(app: XCUIApplication) {
        self.app = app
    }
    
    func assertDashboardVisible() {
        XCTAssertTrue(app.staticTexts["Welcome to Dashboard!"].exists)
    }
    
    func goToDetails() {
        flowButton.tap()
    }
}
