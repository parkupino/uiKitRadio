//
//  StationInfoTest.swift
//  SwiftRadio
//
//  Created by mihail on 23.06.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class StationInfoPageTest: BaseTest {
    
    // Smoke. More Info окно открывается, Имя станции отображается, закрыть окно на 'Okay'
    func testOpenCloseInfoView() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
            .tapMoreInfoButton()
        pages.infoPage()
            .waitForStationNameLabel()
            .tapOkayButton()
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
    }
    
    // Label 'Название Радиостанции' совпадает с label в кнопке '<-Название радиостанции'
    func testVerifyStationName() {
        pages.mainPage()
            .waitForFirstCellToAppear()
            .tapCell(index: 0)
        pages.nowPlayingPage()
            .waitForArtistLabelToAppear()
            .tapMoreInfoButton()
        pages.infoPage()
            .waitForStationNameLabel()
            .assertInfoStationPageInNavBar()
            .tapNavigationBarBackButton()
    }
    
}
