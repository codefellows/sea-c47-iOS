//
//  PersonDetailViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 9/29/15.
//  Copyright © 2015 Code Fellows. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
  
  var selectedName = "None"

  @IBOutlet weak var nameLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      nameLabel.text = selectedName
      
        // Do any additional setup after loading the view.
    }

}
