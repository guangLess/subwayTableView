//
//  SubwayList_YHTests.swift
//  SubwayList-YHTests
//
//  Created by Guang on 6/4/16.
//  Copyright © 2016 Guang. All rights reserved.
//

import XCTest
@testable import SubwayList_YH

class SubwayList_YHTests: XCTestCase {
    
    var viewCTest = SubwayViewController()
    
    
    
    override func setUp() {
        super.setUp()
        
        
        //TODO: what is .dynamicType do?
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        //viewCTest = storyboard.instantiateViewControllerWithIdentifier("subwayVC") as! SubwayViewController
        viewCTest.loadView()
        viewCTest.viewDidLoad()
        
         
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
 
    
    /*
    func testThisShouldPass() {
        let sum = 2 + 2
        
        XCTAssert(sum == 4, "THe Sum is wrong")
        
    }
    
    func testThisWillFail() {
        let testTable = SubwayViewController()
        let tableViveTest = testTable.subwayTableView
        let testData = tableViveTest.
        
        XCTAssert(tableViveTest !== nil, "Get the tableView")
    }
    
  */
}
