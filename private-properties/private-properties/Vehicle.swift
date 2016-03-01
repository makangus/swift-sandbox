//
//  Vehicle.swift
//  private-properties
//
//  Created by Angus Mak on 2016-01-18.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation


// Blueprint
class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var _odometer = 500
    
    // Getter / Setter (Accessors & Mutators)
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init() {
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}
