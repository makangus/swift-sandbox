//
//  Person.swift
//  mvc-test
//
//  Created by Angus Mak on 2016-01-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation

class Person {
    private var _firstname: String!
    private var _lastname: String!
    
    var firstName: String {
        get {
            return _firstname
        }
        set {
            if newValue != "" {
                _firstname = newValue
            }
        }
    }
    
    var lastName: String {
        return _lastname
    }
    
    var fullName: String {
        return "\(_firstname) \(_lastname)"
    }
    
    init(first: String, last: String){
        self._firstname = first
        self._lastname = last
    }
    
    
}
