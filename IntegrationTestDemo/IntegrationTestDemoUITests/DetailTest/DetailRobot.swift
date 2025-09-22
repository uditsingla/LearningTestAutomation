//
//  DetailsRobot.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//
import XCTest

struct DetailRobot {
    let app: XCUIApplication

    var infoLabel: XCUIElement { app.staticTexts["infoLabel"] }

    func isVisible() -> Bool {
        infoLabel.waitForExistence(timeout: 5)
    }
}
