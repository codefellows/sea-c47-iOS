//
//  RosterTableViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 9/24/15.
//  Copyright © 2015 Code Fellows. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {
  
  let names = ["Kam","Brad"]

  @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return names.count
    
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //part 1 - dequeue the cell
    let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
    
    //part 2 - configure the cell
    //cell.textLabel?.text = "\(indexPath.row)"
    let name = names[indexPath.row]
    cell.textLabel?.text = name
    
    cell.backgroundColor = UIColor.whiteColor()
    if indexPath.row == 0 {
      cell.backgroundColor = UIColor.blueColor()
    }
    
    //part 3 - return the cell to the table view, because it needs it to show it
    
    return cell
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
