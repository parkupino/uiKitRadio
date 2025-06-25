//
//  AboutPageTest.swift
//  SwiftRadio
//
//  Created by mihail on 25.06.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class AboutPageTest: BaseTest {
    
    // Smoke. About App окно открывается, Лого приложения отображается, закрыть окно
    func testOpenCloseAboutView() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .tapNowPlayingRadioLogo()
        pages.aboutPage()
            .waitForAboutAppViewRadioLogo()
            .tapAboutAppViewOkayBtn()
        pages.nowPlayingPage()
            .waitForSongLabelToAppear()
    }
}
