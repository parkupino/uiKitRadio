//
//  SmokeTest.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

class SmokeTest: BaseTest {
    
    func testOpenRadioStation() {
        let cell = app.cells.element(boundBy: 0)
        let artist = app.staticTexts["artistLabel"]
        cell.waitForExistence(timeout: 3)
        cell.tap()
        
        artist.waitForExistence(timeout: 3)
        
        let artistLabel = app.staticTexts["artistLabel"].label
        
        let navButtonBack = app.navigationBars.buttons.element(boundBy: 0)
        navButtonBack.tap()
    }
    
    func testStationPausedLabel() {
        let cell = app.cells.element(boundBy: 0)
        cell.tap()
        
        let songLabel = app.staticTexts["songLabel"]
        let playingButton = app.buttons["playingButton"]
        
        playingButton.tap()
        songLabel.waitForExistence(timeout: 2)
        XCTAssertEqual(songLabel.label, "Station Paused...")
    }
}
