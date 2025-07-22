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
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем на Radio Logo") {
            pages.nowPlayingPage()
                .tapNowPlayingRadioLogo()
        }
        step("нажимаем кнопку Okay") {
            pages.aboutPage()
                .waitForAboutAppViewRadioLogo()
                .tapAboutAppViewOkayBtn()
        }
        step("ожидаем появления имени песни") {
            pages.nowPlayingPage()
                .waitForSongLabelToAppear()
        }
    }
}
