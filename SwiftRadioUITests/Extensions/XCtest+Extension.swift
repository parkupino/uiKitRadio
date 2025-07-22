//
//  XCtest+Extension.swift
//  SwiftRadio
//
//  Created by mihail on 01.07.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//
import XCTest

public extension XCTest {
    @discardableResult
    func step(_ name: String, step: () -> Void) -> XCTest {
        XCTContext.runActivity(named: "Step: " + name) { _ in
            step()
        }
        return self
    }
}
