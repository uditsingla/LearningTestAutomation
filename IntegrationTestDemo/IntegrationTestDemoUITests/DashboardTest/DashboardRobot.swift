
//
//  Untitled.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest

class DashboardRobot {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func assertDashboardVisible() {
        XCTAssertTrue(app.staticTexts["Welcome to Dashboard!"].exists)
    }
}
