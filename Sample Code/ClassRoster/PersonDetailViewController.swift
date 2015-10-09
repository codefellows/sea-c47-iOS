//
//  PersonDetailViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 9/29/15.
//  Copyright © 2015 Code Fellows. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var firstNameTextField: UITextField!
  
  @IBOutlet weak var imageView: UIImageView!
  var selectedName = "None"
  var selectedPerson : Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      firstNameTextField.delegate = self
      lastNameTextField.delegate = self
      
      firstNameTextField.text = selectedPerson.firstName
      lastNameTextField.text = selectedPerson.lastName
      
      let russImage = UIImage(named: "russ.jpg")
      imageView.image = russImage

      //nameLabel.text = selectedName
      
        // Do any additional setup after loading the view.
    }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    if let firstNameText = firstNameTextField.text {
      selectedPerson.firstName = firstNameText
    }
    
    if let lastNameText = lastNameTextField.text {
      selectedPerson.lastName = lastNameText
    }
    
    //selectedPerson.firstName = firstNameTextField.text!
    
    textField.resignFirstResponder()
    return true
  }

}
