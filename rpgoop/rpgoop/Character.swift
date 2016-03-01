//
//  Character.swift
//  rpgoop
//
//  Created by Angus Mak on 2016-01-18.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10

    var hp: Int {
        get {
            return _hp
        }
    }

    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        get {
            return hp > 0
        }
    }

    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}