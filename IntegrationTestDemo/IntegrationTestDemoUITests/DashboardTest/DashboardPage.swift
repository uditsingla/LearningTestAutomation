//
//  Untitled.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import XCTest
 
struct DashboardPage {
    
    let app : XCUIApplication
    
    var lblDashboard : XCUIElement {
        app.staticTexts["dashboardlabel"]
    }
    
    var flowButton : XCUIElement {
        app.buttons["flowButton"]
    }
    
    func assertDashboardTitle() -> DashboardPage {
        Thread.sleep(forTimeInterval: 2)
        WaitHelper.waitForElementToAppear(lblDashboard)
        XCTAssertEqual(lblDashboard.label, "Welcome to Dashboard!")
        return self
    }
    
    func clkGoToDetails() -> DashboardPage {
        flowButton.tap()
        return self
    }
}
