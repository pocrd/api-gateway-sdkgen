//
//  apisdkTests.swift
//  apisdkTests
//
//  Created by rendong on 2017/8/14.
//  Copyright © 2017年 net.pocrd. All rights reserved.
//

import XCTest
@testable import apisdk

class apisdkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        if let greeting = try?hello("boy"){
            print("hello   " + greeting);
        }
        
        do{
            let g = try hello2("xxx");
            defer {
                print(g);
            }
        } catch {
            print(error);
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    enum NameError: Error{
        case nobody
        case miao(String)
        case others
    }
    
    func hello2(_ name:String) throws -> String {
        return try hello(name);
    }
    
    func hello(_ name:String) throws -> String {
        if("nbd" == name){
            throw NameError.nobody;
        }
        if(name.hasPrefix("xxx")){
            throw NameError.miao(name);
        }
        return "hi " + name;
    }
    
}
