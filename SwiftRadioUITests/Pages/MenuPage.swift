import XCTest

final class MenuPage: CommonPage {
    
    private var menuViewCloseBtn: XCUIElement {
        app.buttons["menuViewCloseBtn"]
    }
    
    private var menuViewRadioLogo: XCUIElement {
        app.images["menuViewRadioLogo"]
    }
    
    private var menuViewAboutBtn: XCUIElement {
        app.buttons["menuViewAboutBtn"]
    }
    
    private var menuWebsiteBtn: XCUIElement {
        app.buttons["menuWebsiteBtn"]
    }
    
    private var menuViewNames: XCUIElement {
        app.staticTexts["menuViewNames"]
    }
    
    @discardableResult
    func waitForAboutButtonToAppear() -> Self {
       menuViewAboutBtn.waitForExistence(timeout: 3)
        return self
    }
    
    @discardableResult
    func tapCloseMenuButton() -> Self {
        menuViewCloseBtn.tap()
        return self
    }
    
    @discardableResult
    func tapAboutButton() -> Self {
        menuViewAboutBtn.tap()
        return self
    }
}
