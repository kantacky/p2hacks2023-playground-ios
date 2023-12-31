//
//  P2HACKS2023PlaygroundUITestsLaunchTests.swift
//  P2HACKS2023PlaygroundUITests
//
//  Created by Kanta Oikawa on 2023/12/03.
//

import XCTest

final class P2HACKS2023PlaygroundUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
