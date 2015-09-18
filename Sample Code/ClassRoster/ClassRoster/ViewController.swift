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

  @IBOutlet weak var mySwitch: UISwitch!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.blueColor()
    println(view.frame.size)
    println("view did load")
    //myName = "Bradley"
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    println("view will appear")
  }
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    println("view did appear")
    view.backgroundColor = UIColor.greenColor()
  }

  @IBAction func changeColor(sender: AnyObject) {
    view.backgroundColor = UIColor.orangeColor()
    mySwitch.on = !mySwitch.on
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    //myName = "Bob"
    // Dispose of any resources that can be recreated.
  }


}

