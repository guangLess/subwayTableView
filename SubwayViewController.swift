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
        //TODO: findout which one is a better way to pass those data.
        subwayDataStore.populateArrayWithSubLines()
        
        subwayTableView.dataSource = self
        subwayTableView.delegate = self
        dynamicTableViewHeight()

        self.navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subwayDataStore.subwayArrayList.count
    }
    
    private func dynamicTableViewHeight() {
        subwayTableView.rowHeight = UITableViewAutomaticDimension
        subwayTableView.estimatedRowHeight = 160.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO: "cell" needs to be in a pravit struct
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! LineTableViewCell
        let eachLine = subwayDataStore.subwayArrayList[indexPath.row]
        if let iconName = eachLine.letter {
        cell.iconLabel.image = UIImage(named:iconName.lowercaseString)
        }
        cell.nameLabel.text = eachLine.name
        cell.descLabel.text = eachLine.desc
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell selected")
    }
}
