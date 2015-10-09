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
  var people = [Person]()

  @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
      if let peopleFromArchive = self.loadFromArchive() {
        people = peopleFromArchive
      } else {
        
        let me = Person(fName: "Brad", lName: "Johnson")
        let kam = Person(fName: "Kam", lName: "Chancellor")
        people.append(me)
        people.append(kam)
        
        for person in people {
          person.image = UIImage(named: "placeholder")
        }
        
        saveToArchive()
      }
      
      
      tableView.dataSource = self
    
      
//      for var i = 0; i < people.count; i++ {
//        print("loop \(i)")
//        let person = people[i]
//      }
      
   
    
      
        // Do any additional setup after loading the view.
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
    saveToArchive()
    
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    print("segue fired!")
    if segue.identifier == "ShowPersonDetail" {
      
      let myDestinationViewController = segue.destinationViewController as! PersonDetailViewController
      
      if let destinationViewController = segue.destinationViewController as? PersonDetailViewController {
      
      if let selectedIndexPath = tableView.indexPathForSelectedRow {
      let selectedRow = selectedIndexPath.row
      //let selectedName = names[selectedRow]
        let chosenPerson = people[selectedRow]
        
        destinationViewController.selectedPerson = chosenPerson
      
//      destinationViewController.selectedName = selectedName
        }
      }
    } else if segue.identifier == "MyOtherSegue" {
      //this code would customize based on going to a different view controller
    }
    
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count
    
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //part 1 - dequeue the cell
    let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath) as! PersonTableViewCell
    
    //part 2 - configure the cell
    let person = people[indexPath.row]
    
    cell.firstNameLabel.text = person.firstName
    cell.lastNameLabel.text = person.lastName
    cell.personImageView.image = person.image
    
    //part 3 - return the cell to the table view, because it needs it to show it
    
    return cell
  }
  
  func saveToArchive() {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
          NSKeyedArchiver.archiveRootObject(people, toFile: documentPath + "/archive")
    }
  }
  
  func loadFromArchive() -> [Person]? {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
      if let people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentPath + "/archive") as? [Person] {
        return people
      }
    }
    return nil
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
