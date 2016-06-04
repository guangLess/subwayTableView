//
//  SubwayViewController.swift
//  SubwayList-YH
//
//  Created by Guang on 6/4/16.
//  Copyright © 2016 Guang. All rights reserved.
//

import UIKit

internal final class SubwayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var subwayTableView: UITableView!
    
    
    let subwayDataStore: SubwayData = SubwayData.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setupData()
        
       
        let testLine = subwayDataStore.populateArrayWithSubLines().first
        print(testLine)
    
        subwayTableView.dataSource = self
        subwayTableView.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print (subwayDataStore.subwayArrayList.count)
        return subwayDataStore.subwayArrayList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        //TODO: "cell" needs to be in a pravit strac 
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! LineTableViewCell
        let eachLine = subwayDataStore.subwayArrayList[indexPath.row]
        cell.iconLabel.text = eachLine.letter
        cell.iconLabel.backgroundColor = UIColor.blueColor()
        cell.nameLabel.text = eachLine.name
        cell.descLabel.text = eachLine.desc
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell selected")
    }
    

//    func setupData () {
//        
//        let subwayFilePath = NSBundle.mainBundle().URLForResource("subway-lister", withExtension: "json")!
//        let subWayText = try! String(contentsOfURL: subwayFilePath, encoding: NSUTF8StringEncoding)
//        print(subWayText)
//        let data = subWayText.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
//        var subwayArrayList = [SubwayLine]()
//        do {
//            let anyObj = try NSJSONSerialization.JSONObjectWithData(data, options: []) as! [String:AnyObject]
//            print (anyObj["lines"]?.count)
//            
//            if let subwayList = anyObj["lines"] {
//                for i in 0..<subwayList.count{
//                    print(subwayList[i])
//                    
//                    let line = subwayList[i] as! [String : String]
//                    //let desc = line["desc"]
//                    //print (desc)
//                    let eachLine = SubwayLine(desc: line["desc"] , hexcolor: line["hexcolor"], letter: line["letter"], name: line["name"])
//                    subwayArrayList.append(eachLine)
//                }
//            }
//            
//        } catch {
//            print("json error: \(error)")
//        }
//    }

}
