//
//  DetailPage.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 24/09/25.
//

import XCTest

struct DetailPage {
    
    let app : XCUIApplication
    
    var lblDetail : XCUIElement {
        app.staticTexts["infoLabel"]
    }
    
    func assertDetailTitle() -> DetailPage {
        Thread.sleep(forTimeInterval: 2)
        WaitHelper.waitForElementToAppear(lblDetail)
        XCTAssertEqual(lblDetail.label, "Welcome to Details!")
        return self
    }
}
