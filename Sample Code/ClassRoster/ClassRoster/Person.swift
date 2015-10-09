//
//  Person.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 10/1/15.
//  Copyright © 2015 Code Fellows. All rights reserved.
//

import UIKit

class Person : NSObject, NSCoding {
  var firstName : String
  var lastName = "Doe"
  var image : UIImage?
  
  init (fName : String, lName : String) {
    firstName = fName
    lastName = lName
  }
  
  required init?(coder aDecoder: NSCoder) {
    if let firstName = aDecoder.decodeObjectForKey("firstName") as? String {
      self.firstName = firstName
    } else {
      self.firstName = "NA"
    }
    if let lastName = aDecoder.decodeObjectForKey("lastName") as? String {
      self.lastName = lastName
    }
    if let image = aDecoder.decodeObjectForKey("image") as? UIImage {
      self.image = image
    }
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(firstName, forKey: "firstName")
    aCoder.encodeObject(lastName, forKey: "lastName")
    aCoder.encodeObject(image, forKey: "image")
  }
}
