//
//  SubwayData.swift
//  SubwayList-YH
//
//  Created by Guang on 6/4/16.
//  Copyright © 2016 Guang. All rights reserved.
//

import Foundation

class SubwayData {
    
    static let sharedInstance = SubwayData()
    var subwayArrayList = [SubwayLine]()
    let subwayFilePath = NSBundle.mainBundle().URLForResource("subway-lister", withExtension: "json")!

    //FIXME: it might not need a block here, because the data is local.?
    func populateArrayWithSubLines () -> [SubwayLine] {
        let subWayText = try! String(contentsOfURL: subwayFilePath, encoding: NSUTF8StringEncoding)
        //print(subWayText)
        let data = subWayText.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        
        do {
            let anyObj = try NSJSONSerialization.JSONObjectWithData(data, options: []) as! [String:AnyObject]
            print (anyObj["lines"]?.count)
            
            if let subwayList = anyObj["lines"] {
                for i in 0..<subwayList.count{
                    print(subwayList[i])
                    
                    let line = subwayList[i] as! [String : String]
                    //let desc = line["desc"]
                    //print (desc)
                    let eachLine = SubwayLine(desc: line["desc"] , hexcolor: line["hexcolor"], letter: line["letter"], name: line["name"])
                    subwayArrayList.append(eachLine)
                }
            }
            
        } catch {
            print("json error: \(error)")
            return [SubwayLine]()
        }
     return subwayArrayList
    }
}