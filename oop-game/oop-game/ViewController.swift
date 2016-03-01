//
//  ViewController.swift
//  oop-game
//
//  Created by Angus Mak on 2016-01-18.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var player1: Character!
    var player2: Character!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    @IBOutlet weak var player1AttackButton: UIButton!
    @IBOutlet weak var player2AttackButton: UIButton!
    @IBOutlet weak var player1HpLabel: UILabel!
    @IBOutlet weak var player2HpLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startGame()
    }

    @IBAction func onPlayer1Attack(sender: AnyObject) {
        onAttack(player2, attacker: player1)
    }
    
    @IBAction func onPlayer2Attack(sender: AnyObject) {
        onAttack(player1, attacker: player2)
    }
    
    @IBAction func onRestartButtonPressed(sender: AnyObject) {
        restartGame()
    }
    
    func onAttack(target: Character, attacker: Character) {
        textLabel.text = "\(attacker.name) attacked \(target.name)"
        
        target.receiveAttack(attacker.attackPower)
        
        if !target.isAlive {
            textLabel.text = "\(attacker.name) Won!"
            restartButton.hidden = false
        }
    }

    
    func startGame() {
        player1 = Character(name: "Soldier", hp: 120, attackPower: 12, characterImage: player1Image, attackButton: player1AttackButton, hpLabel: player1HpLabel)
        player2 = Character(name: "Orc", hp: 100, attackPower: 10, characterImage: player2Image, attackButton: player2AttackButton, hpLabel: player2HpLabel)
    }
    
    func restartGame() {
        textLabel.text = "Press attack to start"
        restartButton.hidden = true
        player1Image.hidden = false
        player2Image.hidden = false
        player1AttackButton.enabled = true
        player2AttackButton.enabled = true
        
        startGame()
    }
}
