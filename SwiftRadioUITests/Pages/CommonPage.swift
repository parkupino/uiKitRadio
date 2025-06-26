//
//  CommonPage.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

class CommonPage: XCTest {
    required init(app: XCUIApplication) {
        self.app = app
    }
        
    let app: XCUIApplication
    
    var navigationBarTitle: XCUIElement {
        app.navigationBars.element.staticTexts.element(boundBy: 0)
    }
    
    var navigationBarBackButton: XCUIElement{
        app.navigationBars.buttons.element(boundBy: 0)
    }
    
    func tapNavigationBarBackButton() {
        navigationBarBackButton.tap()
    }
}
