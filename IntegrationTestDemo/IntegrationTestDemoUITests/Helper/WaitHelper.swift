//
//  WaitHelper.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//

import XCTest

struct WaitHelper {
    static func waitForElementToAppear(_ element: XCUIElement, timeout: TimeInterval = 120, file: StaticString = #filePath, line: UInt = #line) {
        let exists = element.waitForExistence(timeout: timeout)
        XCTAssertTrue(exists, "Expected element \(element) to appear", file: file, line: line)
    }
}
