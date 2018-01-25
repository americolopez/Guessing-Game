//
//  main.swift
//  gussing game
//
//  Created by Americo Lopez on 1/23/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation

var playAgain: String = "yes"
while playAgain == "yes" {
    
    var randomNumber = Int(arc4random_uniform(100))
    var guess: Int?
    var tries: Int = 1
    
    while randomNumber != guess && tries <= 5 {
        
        print(randomNumber)
        print("guess a number 1-100")
        guess = Int(readLine()!)!
        
        
        if randomNumber == guess! {
            print("you got it right")
        }else if guess! > randomNumber  {
            print(" ooooooooo try again, your number is greater than the random number ,guess again")
            tries = tries + 1
        } else if guess! < randomNumber  {
            print(" ooooooooo try again, your number is less than the random number, guess again  ")
            tries = tries + 1
        }
        if tries > 5 {
            print("you have ran out of tries")
        }
    }
    
        print("do you wanna play again yes / no ")
        playAgain = readLine()!
    
    
}




//if correct ask if they want to play again

// if incorrect tell them the correct answer and ask them to play again











