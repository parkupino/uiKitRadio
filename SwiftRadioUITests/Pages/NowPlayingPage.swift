import XCTest

final class NowPlayingPage: CommonPage {
   
    private var albumImageView: XCUIElement {
        app.images["albumImageView"]
    }
    
    private var stationsDescriptionLabel: XCUIElement {
        app.staticTexts["stationsDescriptionLabel"]
    }
    
    private var previousButton: XCUIElement {
        app.buttons["previousButton"]
    }
    
    private var playingButton: XCUIElement {
        app.buttons["playingButton"]
    }
    
    private var stopButton: XCUIElement {
        app.buttons["stopButton"]
    }
    
    private var nextButton: XCUIElement {
        app.buttons["nextButton"]
    }
    
    private var mpVolumeSlider: XCUIElement {
        app.sliders["mpVolumeSlider"]
    }
    
    private var songLabel: XCUIElement {
        app.staticTexts["songLabel"]
    }
    
    private var artistLabel: XCUIElement {
        app.staticTexts["artistLabel"]
    }
    
    private var nowPlayingRadioLogo: XCUIElement {
        app.buttons["nowPlayingRadioLogo"]
    }
    
    private var airPlayButton: XCUIElement {
        app.buttons["airPlayButton"]
    }
    
    private var shareStationBtn: XCUIElement {
        app.buttons["shareStationBtn"]
    }
    
    private var moreInfoBtn: XCUIElement {
        app.buttons["moreInfoBtn"]
    }
    
    @discardableResult
    func clickPlayPauseButton() -> Self {
        playingButton.tap()
        return self
    }
    
    @discardableResult
    func clickStopButton() -> Self {
        stopButton.tap()
        return self
    }
    
    @discardableResult
    func waitForArtistLabelToAppear() -> Self {
        artistLabel.waitForExistence(timeout: 3)
        return self
    }
    
    @discardableResult
    func waitForSongLabelToAppear() -> Self {
        songLabel.waitForExistence(timeout: 3)
        return self
    }
    
    @discardableResult
    func checkStationPausedLabel() -> Self {
        XCTAssertEqual(songLabel.label, "Station Paused...")
        return self
    }
    
    @discardableResult
    func checkStationStoppedLabelEqualsNavBarLabel() -> Self {
        XCTAssertEqual(navigationBarTitle.label, songLabel.label)
        return self
    }
    
    @discardableResult
    func tapMoreInfoButton() -> Self {
        moreInfoBtn.tap()
        return self
    }
    
    @discardableResult
    func tapNowPlayingRadioLogo() -> Self {
        nowPlayingRadioLogo.tap()
        return self
    }
}
