//
//  SmokeTest.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class SmokeTest: BaseTest {
    
//    // Открыть первую радиостанцию. проверить ArtistLabel. вернуться на Главную
//    func testOpenRadioStation() {
//        pages.mainPage()
//            .waitForFirstCellToAppear()
//            .tapCell(index: 0)
//        pages.nowPlayingPage()
//            .waitForArtistLabelToAppear()
//            .tapNavigationBackButton()
//    }

//    // Label 'Название песни' меняется на 'Station Paused...' после нажатия на Паузу
//    func testStationPausedLabel() {
//        pages.mainPage()
//            .waitForFirstCellToAppear()
//            .tapCell(index: 0)
//        pages.nowPlayingPage()
//            .clickPlayPauseButton()
//            .waitForSongLabelToAppear()
//            .checkStationPausedLabel()
//    }
    
//    // Burger menu открывается, кнопка About появляется в окне, закрыть окно
//    func testOpencCloseBurgerMenuView() {
//        pages.mainPage()
//            .tapBurgerButton()
//        pages.menuPage()
//            .waitForAboutButtonToAppear()
//            .tapCloseMenuButton()
//    }
//    
//    // Проверить страницу About в Burger menu
//    func testOpenAboutViewFromBurgerMenu() {
//        pages.mainPage()
//            .tapBurgerButton()
//        pages.menuPage()
//            .waitForAboutButtonToAppear()
//            .tapAboutButton()
//        pages.aboutPage()
//            .waitForAboutAppViewRadioLogo()
//            .tapAboutAppViewOkayBtn()
//        pages.menuPage()
//            .waitForAboutButtonToAppear()
//            .tapCloseMenuButton()
//    }
    
//    // More Info окно открывается, Имя станции отображается, закрыть окно
//    func testOpenCloseInfoView() {
//        pages.mainPage()
//            .waitForFirstCellToAppear()
//            .tapCell(index: 0)
//        pages.nowPlayingPage()
//            .waitForArtistLabelToAppear()
//            .tapMoreInfoButton()
//        pages.infoPage()
//            .waitForStationNameLabel()
//            .tapOkayButton()
//        pages.nowPlayingPage()
//            .waitForArtistLabelToAppear()
//    }
    
//    // About App окно открывается, Лого приложения отображается, закрыть окно
//    func testOpenCloseAboutView() {
//        pages.mainPage()
//            .waitForFirstCellToAppear()
//            .tapCell(index: 0)
//        pages.nowPlayingPage()
//            .tapNowPlayingRadioLogo()
//        pages.aboutPage()
//            .waitForAboutAppViewRadioLogo()
//            .tapAboutAppViewOkayBtn()
//        pages.nowPlayingPage()
//            .waitForSongLabelToAppear()
//    }
    
}
