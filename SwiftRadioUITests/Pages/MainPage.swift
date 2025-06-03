//
//  MainPage.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//
import XCTest

final class MainPage: CommonPage {

    private var burgerMenuButton: XCUIElement {
        app.buttons["icon hamburger"]
    }
    
    private var cells: XCUIElement {
        app.cells.element(boundBy: 0)
        
    }
    
    private var nowPlayingBottomButton: XCUIElement {
        app.buttons["nowPlayingBottomButton"]
    }
    
    
    private var nowPlayingTitleLabel: XCUIElement {
        app.staticTexts["nowPlayingTitleLabel"]
    }
    
    private var nowPlayingSubtitleLabel: XCUIElement {
        app.staticTexts["nowPlayingSubtitleLabel"]
    }

    @discardableResult
    func nowPlayingButtonIsEnabled(enabled: Bool) -> Self {
        if enabled {
            XCTAssertTrue(nowPlayingBottomButton.isEnabled)
        } else {
            XCTAssertFalse(nowPlayingBottomButton.isEnabled)
        }
        return self
    }
    
    @discardableResult
    func waitForFirstCellToAppear() -> Self {
        XCTAssertTrue(cells.waitForExistence(timeout: 3))
        return self
    }
    
    @discardableResult
    func tapCell(index: Int) -> Self {
        app.cells.element(boundBy: index).tap()
    return self
    }
    
    @discardableResult
    func tapBurgerButton() -> Self {
        burgerMenuButton.tap()
        return self
    }
    
}


