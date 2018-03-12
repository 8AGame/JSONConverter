//
//  JSONConverterUITests.swift
//  JSONConverterUITests
//
//  Created by 姚巍 on 2018/2/8.
//  Copyright © 2018年 姚巍. All rights reserved.
//

import XCTest

class JSONConverterUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let jsonconverterWindow = app.windows["JSONConverter"]
        jsonconverterWindow.click()
        
        let textView = jsonconverterWindow.children(matching: .scrollView).element(boundBy: 0).children(matching: .textView).element
        textView.click()
        let testStr = """
                    {"name": "张三", "age": 12, "isRich": true, "card": {"num": 123423423, "title": "中国人民银行"}}
                    """

        textView.typeText(testStr)
    }
    
}
