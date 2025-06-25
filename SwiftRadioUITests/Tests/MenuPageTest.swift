//
//  AboutPageTest.swift
//  SwiftRadio
//
//  Created by mihail on 23.06.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

final class MenuPageTest: BaseTest {
    
    // Smoke. Burger menu открывается, кнопка About появляется в окне, закрыть окно
    func testOpencCloseBurgerMenuView() {
        pages.mainPage()
            .tapBurgerButton()
        pages.menuPage()
            .waitForAboutButtonToAppear()
            .tapCloseMenuButton()
    }
    
    // Проверить страницу About в Burger menu
    func testOpenAboutViewFromBurgerMenu() {
        pages.mainPage()
            .tapBurgerButton()
        pages.menuPage()
            .waitForAboutButtonToAppear()
            .tapAboutButton()
        pages.aboutPage()
            .waitForAboutAppViewRadioLogo()
            .tapAboutAppViewOkayBtn()
        pages.menuPage()
            .waitForAboutButtonToAppear()
            .tapCloseMenuButton()
    }
}
