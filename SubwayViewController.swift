//
//  SubwayViewController.swift
//  SubwayList-YH
//
//  Created by Guang on 6/4/16.
//  Copyright © 2016 Guang. All rights reserved.
//

import UIKit
import QuartzCore
import UIColor_Hex_Swift

internal final class SubwayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var subwayTableView: UITableView!
    
    
    private let subwayDataStore: SubwayData = SubwayData.sharedInstance

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
        //FIXME: not a cricle
        cell.iconLabel.text = eachLine.letter
        let hexColorStr = String(format:"#%@",eachLine.hexcolor!)
        
        cell.iconLabel.backgroundColor = UIColor(rgba:hexColorStr)
        //var strokeColor = UIColor(rgba: "#ffcc00").CGColor
        //cell.iconLabel.layer.cornerRadius = cell.iconLabel.frame.height/2
        //cell.clipsToBounds = true
        //FIXME: pod to convert hex color
        //cell.iconLabel.layer.backgroundColor = UIColor.blueColor().CGColor
        
        cell.nameLabel.text = eachLine.name
        cell.nameLabel.sizeToFit()
        cell.descLabel.text = eachLine.desc
        cell.descLabel.sizeToFit()
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell selected")
    }
}
