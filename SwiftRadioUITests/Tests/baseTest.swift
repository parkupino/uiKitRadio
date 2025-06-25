//
//  baseTest.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//
import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    lazy var pages: PageFactory! = PageFactory(app: app)
//    lazy var genericPage: PageObjectsFactory! = PageObjectsFactory(app: app)
    
        override func setUp() {
            super.setUp()
            app.launchArguments.append("RemoveAuthOnStart")
                    app.launchEnvironment["host"] = "https://test.com"
            continueAfterFailure = false // хард ассерты. По дефолту используются софт
            app.launch()
        }
        
//        override func tearDown() {
//            
//            pages = nil
//            genericPage = nil
//            super.tearDown()
//        }
    
}


