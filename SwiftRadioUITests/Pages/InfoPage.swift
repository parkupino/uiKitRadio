import XCTest

final class InfoPage: CommonPage {
    
    private var stationImageView: XCUIElement {
        app.images["stationImageView"]
    }
    
    private var stationNameLabel: XCUIElement {
        app.staticTexts["stationNameLabel"]
    }
    
    private var stationDescriptionLabel: XCUIElement {
        app.staticTexts["stationDescriptionLabel"]
    }
    
    private var okayButton: XCUIElement {
        app.buttons["okayButton"]
    }
    
    @discardableResult
    func waitForStationNameLabel() -> Self {
        stationNameLabel.waitForExistence(timeout: 3)
        return self
    }
    
    @discardableResult
    func tapOkayButton() -> Self {
        okayButton.tap()
        return self
    }
    
    @discardableResult
    func assertInfoStationPageInNavBar() -> Self {
        XCTAssertEqual(navigationBarBackButton.label, stationNameLabel.label)
        return self
    }
    
}
