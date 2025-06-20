
import XCTest

// Simple
class PageFactory {
    init(app: XCUIApplication) {
        self.app = app
    }
    
    let app: XCUIApplication

    func mainPage() -> MainPage {
        return MainPage(app: app)
    }
    
    func nowPlayingPage() -> NowPlayingPage {
        return NowPlayingPage(app: app)
    }
    
    func menuPage() -> MenuPage {
        return MenuPage(app: app)
    }
    
    func infoPage() -> InfoPage {
        return InfoPage(app: app)
    }
    
    func aboutPage() -> AboutPage {
        return AboutPage(app: app)
    }
}
