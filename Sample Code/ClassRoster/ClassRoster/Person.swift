//
//  Person.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 10/1/15.
//  Copyright © 2015 Code Fellows. All rights reserved.
//

import Foundation

class Person {
  var firstName : String
  var lastName = "Doe"
  var building : String?
  
  
  init (fName : String, lName : String) {
    firstName = fName
    lastName = lName
  }
}
