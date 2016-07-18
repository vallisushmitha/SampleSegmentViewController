//
//  ViewController.swift
//  SampleSegmentViewController
//
//  Created by kvanaMini1 on 23/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    var firstView: [String] = ["One","Two","Three","Four","Five"]
    var secondView: [String] = ["Apple","Ball","Cat","Dog","Egg"]
    var thirdView: [String] = ["A","B","C","D","E"]
    var fourthView: [String] = ["a","b","c","d","e"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       var returnvalue = 0
        
        switch (mySegmentControl.selectedSegmentIndex) {
        case 0:
            returnvalue = firstView.count
            break
        case 1:
            returnvalue = secondView.count
            break
        case 2:
            returnvalue = thirdView.count
            break
        case 3:
            returnvalue = fourthView.count
        default:
            break
        }
        
       return returnvalue
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    let mycell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath)
        
        
        
        switch (mySegmentControl.selectedSegmentIndex) {
        case 0:
            mycell.textLabel!.text = firstView[indexPath.row]
            break
        case 1:
            mycell.textLabel!.text = secondView[indexPath.row]
            break
        case 2:
            mycell.textLabel!.text = thirdView[indexPath.row]
            break
        case 3:
            mycell.textLabel!.text = fourthView[indexPath.row]
            break
            
        default:
            break
        }
        return mycell
    
    }
    
    @IBAction func segmentedControl(sender: AnyObject) {
        
        myTableView.reloadData()
        
        
    }
}

