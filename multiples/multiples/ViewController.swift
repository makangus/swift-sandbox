//
//  ViewController.swift
//  multiples
//
//  Created by Angus Mak on 2016-01-16.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var sum = 0
    var number = 0
    let MAX_SUM = 50
    
    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!

    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!

    @IBAction func onPlayBtnPressed(sender: UIButton) {
        if numberTxt.text != nil && numberTxt.text != "" {
            number = Int(numberTxt.text!)!
            
            numberTxt.hidden = true
            playBtn.hidden = true
            
            addLbl.hidden = false
            addBtn.hidden = false
        }
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton) {
        addLbl.text = "\(sum) + \(number) = \(sum + number)"
        sum += number
        if isGameOver() {
            restartGame()
        }
    }
    
    func isGameOver() -> Bool {
        return sum >= MAX_SUM
    }
    
    func restartGame() {
        sum = 0
        number = 0
        addLbl.text = "Press Add to add!"
        numberTxt.text = ""
        
        numberTxt.hidden = false
        playBtn.hidden = false
        
        addLbl.hidden = true
        addBtn.hidden = true
    }
}

