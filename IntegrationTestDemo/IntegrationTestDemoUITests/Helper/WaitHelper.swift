//
//  WaitHelper.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//

import XCTest

struct WaitHelper {
    static func waitForElementToAppear(_ element: XCUIElement, timeout: TimeInterval = 60, file: StaticString = #filePath, line: UInt = #line) {
        let predicate = NSPredicate(format: "exists == true")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: element)
        let result = XCTWaiter.wait(for: [expectation], timeout: timeout)
        XCTAssertTrue(result == .completed, "Expected element \(element) to appear", file: file, line: line)
    }
}
