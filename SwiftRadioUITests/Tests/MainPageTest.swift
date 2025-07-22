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
        step("проверяем отображение списка радиостанций после открытия приложения") {
            pages.mainPage()
                .waitForFirstCellToAppear()
        }
    }
    
    // Bottom bar плеер становится активным после запуска радио станции
    func testNowPlayingBottomBarIsEnabled() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .nowPlayingButtonIsEnabled(enabled: false)
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем кнопку Back") {
            pages.nowPlayingPage()
                .tapNavigationBarBackButton()
        }
        step("проверяем, что Now Playing Button включен") {
            pages.mainPage()
                .nowPlayingButtonIsEnabled(enabled: true)
        }
        // Делаем скриншот
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = "Screenshot at failure point"
        attachment.lifetime = .keepAlways // Храним всегда, даже если тест прошел
        add(attachment)
        
    }
    
    // Проверить 'Pull to Refresh' списка станций
    func testPulltoRefreshStations() {
        step("делаем 'Pull to Refresh' на Main Page") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .pullToRefresh()
                .waitForFirstCellToAppear()
        }
    }
    
    // Плеер открывается по нажатию на Now Playing кнопки (в Nav Bar и Bottom Bar)
    func testOpenPlayerWithNowPlayingButton() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем кнопку Back") {
            pages.nowPlayingPage()
                .tapNavigationBarBackButton()
        }
        step("нажимаем Now Playing Button в Navigation Bar") {
            pages.mainPage()
                .waitForNowPlayingBarButton()
                .tapNowPlayingBarButton()
        }
        step("нажимаем кнопку Back") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
                .tapNavigationBarBackButton()
        }
        step("нажимаем Now Playing Button в Bottom Bar") {
            pages.mainPage()
                .nowPlayingButtonIsEnabled(enabled: true)
                .tapNowPlayingBottomButton()
        }
        step("ожидаем появления имени артиста") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
        }
    }
}
