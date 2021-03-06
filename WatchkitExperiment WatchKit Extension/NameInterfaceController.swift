//
//  NameInterfaceController.swift
//  WatchkitExperiment
//
//  Created by Ruben Richthammer on 28.09.16.
//  Copyright © 2016 Ruben Richthammer. All rights reserved.
//

import WatchKit
import Foundation


class NameInterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
    }
    override init() {
        super.init()
        self.loadTable()
    }
    func loadTable (){
        let dummyData = ["Ruben", "Max", "Daniel", "Dominik"]
        table.setNumberOfRows(dummyData.count, withRowType: "MyRowController")
        for (index, text) in dummyData.enumerate(){
            let row = table.rowControllerAtIndex(index) as! NameTableRow
            row.rowLabel.setText(text)
        }
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
