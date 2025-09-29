//
//  DetailsRobot.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//
import XCTest

class DetailRobot {
    
    private let app: XCUIApplication
    private lazy var detailPage = DetailPage(app: app)

    init(app: XCUIApplication) {
        self.app = app
    }

    func assertDetailTitle() -> DetailRobot {
        _ = detailPage.assertDetailTitle()
        return self
    }
}
