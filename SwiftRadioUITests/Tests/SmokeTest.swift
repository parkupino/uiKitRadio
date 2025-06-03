//
//  SmokeTest.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class SmokeTest: BaseTest {
    lazy var mainPage = MainPage(app: app)
    lazy var nowPlayingPage = NowPlayingPage(app: app)
    lazy var menuPage = MenuPage(app: app)
    lazy var infoPage = InfoPage(app: app)
    lazy var aboutPage = AboutPage(app: app)
    
    // Bottom bar плеер становится активным после запуска радио станции
    func testNowPlayingBottomBarIsEnabled() {
        mainPage
            .nowPlayingButtonIsEnabled(enabled: false)
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        nowPlayingPage
            .tapNavigationBackButton()
        mainPage
            .nowPlayingButtonIsEnabled(enabled: true)
    }
    
    // Открыть первую радиостанцию. проверить ArtistLabel. вернуться на Главную
    func testOpenRadioStation() {
        mainPage
            .waitForFirstCellToAppear
            .tapCell(index: 0)
        nowPlayingPage
            .waitForArtistLabelToAppear()
            .tapNavigationBackButton()
    }

    // Label 'Название песни' меняется на 'Station Paused...' после нажатия на Паузу
    func testStationPausedLabel() {
        mainPage
            .waitForFirstCellToAppear
            .tapCell(index: 0)
        nowPlayingPage
            .clickPlayPauseButton()
            .waitForSongLabelToAppear()
            .checkStationPausedLabel()
    }
    
    // Burger menu открывается, кнопка About появляется в окне, закрыть окно
    func testOpencCloseBurgerMenuView() {
        mainPage
            .tapBurgerButton()
        menuPage
            .waitForAboutButtonToAppear()
            .tapCloseMenuButton()
    }
    
    // More Info окно открывается, Имя станции отображается, закрыть окно
    func testOpenCloseInfoView() {
        mainPage
            .waitForFirstCellToAppear
            .tapCell(index: 0)
        nowPlayingPage
            .waitForArtistLabelToAppear()
            .tapMoreInfoButton()
        infoPage
            .waitForStationNameLabel()
            .tapOkayButton()
        nowPlayingPage
            .waitForArtistLabelToAppear()
    }
    
    // About App окно открывается, Лого приложения отображается, закрыть окно
    func testOpenCloseAboutView() {
        mainPage
            .waitForFirstCellToAppear
            .tapCell(index: 0)
        nowPlayingPage
            .tapNowPlayingRadioLogo()
        aboutPage
            .waitForAboutAppViewRadioLogo()
            .tapAboutAppViewOkayBtn()
        nowPlayingPage
            .waitForSongLabelToAppear()
        
    }
    
}
