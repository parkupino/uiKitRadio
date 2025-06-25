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
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
            .tapNavigationBackButton()
    }
    
    // Label 'Название песни' меняется на 'Station Paused...' после нажатия на Паузу
    func testStationPausedLabel() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .clickPlayPauseButton()
            .waitForSongLabelToAppear()
            .checkStationPausedLabel()
    }
    
    // Label 'Название песни' меняется на 'Название радиостанции' после нажатия на Stop
    func testStationStopedLabel() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .clickStopButton()
            .checkStationStoppedLabelEqualsNavBarLabel()
    }
}
