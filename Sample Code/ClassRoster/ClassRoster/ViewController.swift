//
//  ViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 9/17/15.
//  Copyright (c) 2015 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var myName = "Brad"
  var counter = 0
  var numbers = [0,1,2,4]

  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //view.backgroundColor = UIColor.blueColor()
    print(view.frame.size)
    print("view did load")
    numbers = [Int]()
    numbers.append(0)
    numbers.append(1)
    
    

  
    //myName = "Bradley"
    // Do any additional setup after loading the view, typically from a nib.
  }
  

  @IBAction func buttonPressed(sender: AnyObject) {
    counter++
    numbers.append(counter)
    let firstNumber = numbers[0]
    //same as counter = counter + 1
    
    if counter > 10 {
      counter = 0
    }
    
    myLabel.text = "\(counter)"
  }
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    print("view will appear")
  }
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    print("view did appear")
    //view.backgroundColor = UIColor.greenColor()
  }
}

