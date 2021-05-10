//
//  SwiftUIPracticeTests.swift
//  SwiftUIPracticeTests
//
//  Created by dharasis behera on 10/05/21.
//

import XCTest

class SwiftUIPracticeTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
      
    }
    
    func testExample1(){
        let string = "i am a test case"

        XCTAssertEqual(string, "i am a test case")
    }
    func testExample2(){
        let num = 2
        let sq = num * num

        XCTAssertEqual(sq, 4)
    }
    
    func testExample3(){
        let num = 2
        let cube = num * num * num

        XCTAssertEqual(cube, 8)
    }
    func testExample4(){
        let num = 2
        let cube = num * num * num

        XCTAssertEqual(cube, 8)
    }
    
    func testExample5(){
        let num = 2
        let cube = num * num * num

        XCTAssertEqual(cube, 8)
    }
}
