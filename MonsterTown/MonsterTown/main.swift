//
//  main.swift
//  MonsterTown
//
//  Created by Angus Mak on 2016-02-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import Foundation

var myTown = Town(region: "West", population: 0, stoplights: 6)
myTown?.printTownDescription()

let ts = myTown?.townSize
print(ts)
myTown?.changePopulation(1000000)
print("Size: \(myTown?.townSize); population: \(myTown?.population)")

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()
fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil