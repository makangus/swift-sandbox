//
//  Character.swift
//  oop-game
//
//  Created by Angus Mak on 2016-01-18.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation
import UIKit

class Character: NSObject{
    private var _name: String = ""
    private var _hp: Int = 0
    private var _attackPower: Int = 0
    private var _characterImage: UIImageView!
    private var _attackButton: UIButton!
    private var _hpLabel: UILabel!
    
    var attackPower: Int {
        get{
            return _attackPower
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }
    
    var isAlive: Bool {
        return _hp > 0
    }
    
    init(name: String, hp: Int, attackPower: Int, characterImage: UIImageView, attackButton: UIButton, hpLabel: UILabel) {
        super.init()
        self._name = name
        self._hp = hp
        self._attackPower = attackPower
        self._characterImage = characterImage
        self._attackButton = attackButton
        self._hpLabel = hpLabel
        
        updateHpLabel()
    }
    
    func receiveAttack(attackPower: Int) {
        _hp -= attackPower
        if _hp < 0 {
            _hp = 0
        }
        
        updateHpLabel()
        
        if !isAlive {
            _characterImage.hidden = true
            _attackButton.enabled = false
        } else {
            // Disable attack for 3 seconds.
            _attackButton.enabled = false
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "reEnableAttack", userInfo: nil, repeats: false)
        }
    }
    
    func reEnableAttack() {
        _attackButton.enabled = true
    }
    
    func updateHpLabel() {
        _hpLabel.text = "\(_hp) HP"
    }
}

