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
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем на кнопку Info") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
                .tapMoreInfoButton()
        }
        step("нажимаем на кнопку Okay") {
            pages.infoPage()
                .waitForStationNameLabel()
                .tapOkayButton()
        }
        step("ожидаем появления имени артиста") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
        }
    }
    
    // Label 'Название Радиостанции' совпадает с label в кнопке '<-Название радиостанции'
    func testVerifyStationName() {
        step("выбираем первую станцию") {
            pages.mainPage()
                .waitForFirstCellToAppear()
                .tapCell(index: 0)
        }
        step("нажимаем на кнопку Info") {
            pages.nowPlayingPage()
                .waitForArtistLabelToAppear()
                .tapMoreInfoButton()
        }
        step("проверяем название Радиостанции в Navigation bar") {
            pages.infoPage()
                .waitForStationNameLabel()
                .assertInfoStationPageInNavBar()
        }
        step("нажимаем кнопку Back") {
            pages.infoPage()
                .tapNavigationBarBackButton()
        }
        
    }
    
}
