//
//  Mayor.swift
//  MonsterTown
//
//  Created by Angus Mak on 2016-02-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel: Int = 0

    mutating func notify() {
        anxietyLevel++
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
}
