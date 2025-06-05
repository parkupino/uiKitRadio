import XCTest

final class AboutPage: CommonPage {
   
    private var aboutAppViewRadioLogo: XCUIElement {
        app.images["aboutAppViewRadioLogo"]
    }
    
    private var aboutAppViewLabel: XCUIElement {
        app.staticTexts["aboutAppViewLabel"]
    }
    
    private var aboutAppViewVersionLabel: XCUIElement {
        app.staticTexts["aboutAppViewVersionLabel"]
    }
    
    private var aboutAppViewWebsiteBtn: XCUIElement {
        app.buttons["aboutViewWebsiteBtn"]
    }
    
    private var aboutAppViewEmailMeBtn: XCUIElement {
        app.buttons["aboutViewEmailMeBtn"]
    }
    
    private var aboutAppViewOkayBtn: XCUIElement {
        app.buttons["aboutAppViewOkayBtn"]
    }
    
    private var cells: XCUIElement {
        app.cells.element(boundBy: 0)
    }
    
    @discardableResult
    func waitForAboutAppViewRadioLogo() -> Self {
        aboutAppViewRadioLogo.waitForExistence(timeout: 2)
        return self
    }
    
    @discardableResult
    func tapAboutAppViewOkayBtn() -> Self {
        aboutAppViewOkayBtn.tap()
        return self
    }
}
