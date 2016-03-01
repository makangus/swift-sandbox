//
//  Person.swift
//  defaults
//
//  Created by Angus Mak on 2016-01-21.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation

class Person: NSObject, NSCoding {
    var firstName: String!
    var lastName: String!
    
    init(first: String, last: String) {
        firstName = first
        lastName = last
    }
    
    override init() {

    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self.firstName = aDecoder.decodeObjectForKey("firstName") as? String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
    }
}
