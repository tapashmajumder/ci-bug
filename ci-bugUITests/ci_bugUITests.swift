//
//  ci_bugUITests.swift
//  ci-bugUITests
//
//  Created by Tapash Majumder on 11/21/19.
//  Copyright © 2019 Iterable. All rights reserved.
//

import XCTest

class ci_bugUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testHelloWorld() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["Show Message"].tap()
        
        XCTAssertTrue(app.staticTexts["Hello, World!"].waitForExistence(timeout: 15))
        
    }
}
