//
//  NowPlayingTest.swift
//  SwiftRadio
//
//  Created by mihail on 22.06.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class NowPlayingPageTest: BaseTest {
    
    // Smoke. Открыть первую радиостанцию. проверить ArtistLabel. вернуться на Главную
    func testOpenRadioStation() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем кнопку Back") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
                .tapNavigationBarBackButton()
        }
    }
    
    // Label 'Название песни' меняется на 'Station Paused...' после нажатия на Паузу
    func testStationPausedLabel() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("проверяем имя станции при Pause") {
            pages.nowPlayingPage()
                .clickPlayPauseButton()
                .waitForSongLabelToAppear()
                .checkStationPausedLabel()
        }
    }
    
    // Label 'Название песни' меняется на 'Название радиостанции' после нажатия на Stop
    func testStationStopedLabel() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("проверяем имя станции при Stop") {
            pages.nowPlayingPage()
                .clickStopButton()
                .checkStationStoppedLabelEqualsNavBarLabel()
        }
    }
}
