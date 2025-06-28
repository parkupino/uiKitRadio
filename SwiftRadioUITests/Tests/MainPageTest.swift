//
//  MainPageTest.swift
//  SwiftRadio
//
//  Created by mihail on 21.06.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class MainPageTest: BaseTest {
    
    // Smoke. Список радиостанций отображается при открытии приложения
    func testListOfStationsIsShownOnAppLaunch() {
        pages.mainPage()
            .waitForFirstCellToAppear()
    }
    
    // Bottom bar плеер становится активным после запуска радио станции
    func testNowPlayingBottomBarIsEnabled() {
        pages.mainPage()
            .nowPlayingButtonIsEnabled(enabled: false)
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .tapNavigationBarBackButton()
        pages.mainPage()
            .nowPlayingButtonIsEnabled(enabled: true)
    }
    
    // Проверить 'Pull to Refresh' списка станций
    func testPulltoRefreshStations() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .pullToRefresh()
            .waitForFirstCellToAppear()
    }
    
    // Плеер открывается по нажатию на Now Playing кнопки (в Nav Bar и Bottom Bar)
    func testOpenPlayerWithNowPlayingButton() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .tapNavigationBarBackButton()
        pages.mainPage()
            .waitForNowPlayingBarButton()
            .tapNowPlayingBarButton()
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
            .tapNavigationBarBackButton()
        pages.mainPage()
            .nowPlayingButtonIsEnabled(enabled: true)
            .tapNowPlayingBottomButton()
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
    }
}
