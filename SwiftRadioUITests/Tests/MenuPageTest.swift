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
        step("нажимаем на Burger меню") {
            pages.mainPage()
                .tapBurgerButton()
        }
        step("нажимаем на Close") {
            pages.menuPage()
                .waitForAboutButtonToAppear()
                .tapCloseMenuButton()
        }
    }
    
    // Проверить страницу About в Burger menu
    func testOpenAboutViewFromBurgerMenu() {
        step("нажимаем на Burger меню") {
            pages.mainPage()
                .tapBurgerButton()
        }
        step("нажимаем на About") {
            pages.menuPage()
                .waitForAboutButtonToAppear()
                .tapAboutButton()
        }
        step("нажимаем на Okay") {
            pages.aboutPage()
                .waitForAboutAppViewRadioLogo()
                .tapAboutAppViewOkayBtn()
        }
        step("нажимаем на Close") {
            pages.menuPage()
                .waitForAboutButtonToAppear()
                .tapCloseMenuButton()
        }
    }
}
