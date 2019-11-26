//
//  ci_bugUITests.swift
//  ci-bugUITests
//
//  Created by Tapash Majumder on 11/21/19.
//  Copyright © 2019 Iterable. All rights reserved.
//

import XCTest

class ci_bugUITests: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launch()

        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testShowWKWebviewMessage() {
        // UI tests must launch the application that they test.
        app.buttons["Show WKWebView Message"].tap()
        
        XCTAssertTrue(app.staticTexts["Hello, World!"].waitForExistence(timeout: 15))
        
    }

    func testShowRegularMessage() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["Show Regular Message"].tap()
        
        XCTAssertTrue(app.staticTexts["Hello, World!"].waitForExistence(timeout: 15))
        
    }
}
