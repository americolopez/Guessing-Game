//
//  main.swift
//  gussing game
//
//  Created by Americo Lopez on 1/23/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation
var doNotWannaPlay: String = "No"
var playAgain: String = "yes"
print("""

⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️
⭐️welcome to the guessing game❗️❗️⭐️
⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️⭐️
you have 5 guess, Good luck !!
""")
while playAgain.lowercased() == "yes" {
    var randomNumber = Int(arc4random_uniform(100))
    var guess: Int?
    var tries: Int = 2
    print("guess a number 1-100, the number of tries 1/5")
    guess = Int(readLine()!)
    while guess == nil ||  guess! >= 101 || guess! <= -1 {
        guess = Int(readLine()!)
    }
    
    while randomNumber != guess && tries <= 5 {
        if guess! > randomNumber  {
            print("you got it wrong😂😂😂,your number is greater than the random number ,guess again , the number of tries used \(tries)/5")
            guess = Int(readLine()!)
            while guess == nil ||  guess! >= 101 || guess! <= -1 {
                print("just Guess a number 1-100!‼️ 😡😡")
                guess = Int(readLine()!)
            }
            tries = tries + 1
        }
        else if guess! < randomNumber  {
            print("you got it wrong😂😂😂,your number is less than the random number, guess again , the number of tries used \(tries)/5  ")
            guess = Int(readLine()!)
            while guess == nil ||  guess! >= 101 || guess! <= 1 {
                print("just Guess a number 1-100‼️ 😡😡")
                guess = Int(readLine()!)
            }
            tries = tries + 1
        }
        if tries > 5 {
            print("you have ran out of tries , you suck at this 😂😂😂")
            print(" your number was \(randomNumber)")
        }
    }
    if guess == randomNumber{
        print("""
🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉
🎉 you got it right‼️‼️🎉
🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉
""")
    }
    print("do you wanna play again yes / no ")
    playAgain = readLine()!.lowercased()
    while playAgain != "yes" && playAgain != "no"{
        print("say yes or no ")
        playAgain = readLine()!.lowercased()
    }
    
    
}










