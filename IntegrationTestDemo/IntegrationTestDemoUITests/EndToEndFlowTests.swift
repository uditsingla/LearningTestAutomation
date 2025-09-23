
//
//  EndToEnd.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//

import XCTest

final class EndToEndFlowTests: XCTestCase {
    
    var app : XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func testEndToEndLoginToDetails() {
        
        let loginRobot = LoginRobot()
        let dashboardRobot = DashboardRobot(app: app)
        let detailRobot = DetailRobot(app: app)

        // Step 1: Login
        _ = loginRobot.login(username: "abhi", password: "123456")
        
       // XCTAssertTrue(dashboardRobot.welcomeLabel.waitForExistence(timeout: 5), "Welcome to Dashboard!")
        
        WaitHelper.waitForElementToAppear(dashboardRobot.welcomeLabel)
        dashboardRobot.assertDashboardVisible()

        // Step 2: Navigate to Details
        dashboardRobot.goToDetails()
        WaitHelper.waitForElementToAppear(detailRobot.infoLabel)

        XCTAssertTrue(detailRobot.isVisible())
         
    }
}
