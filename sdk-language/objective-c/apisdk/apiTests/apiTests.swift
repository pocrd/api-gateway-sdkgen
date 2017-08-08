//
//  apiTests.swift
//  apiTests
//
//  Created by rendong on 2017/8/4.
//  Copyright © 2017年 pocrd.net All rights reserved.
//

import XCTest

class apiTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var context = PoCApiContext(appid: "1", vercode: 1, vername: "1.0");
        var accessor = PoCApiAccessor(apiContext: context, connTimeout: 3000, soTimeout: 1000, agent: "swift test", keepalive: 61000, apiUrl: "http://www.pocrd.net");
        accessor!.referer = "123";
        var hello = PoCApitest_TestDemoSayHello(name: "你好");
        accessor?.fillApi(withResponse: hello);
        
        print("hello world." + accessor!.referer + hello!.result().dynamicEntity.typeName);
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
