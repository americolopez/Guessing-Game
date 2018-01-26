//
//  main.swift
//  gussing game
//
//  Created by Americo Lopez on 1/23/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation

var playAgain: String = "yes"
while playAgain.lowercased() == "yes" {
    var randomNumber = Int(arc4random_uniform(100))
    var guess: Int?
    var tries: Int = 1
    print("welcome to the guessing game!! This was a pain to make so don't break it!!! You 🤬🤬!!!  ")
    
    
    
    
    print("guess a number 1-100")
    guess = Int(readLine()!)
    while  guess! > 101 || guess! < 0 || guess == nil {
        print("Guess again!")
        guess = Int(readLine()!)
    }
    
   while randomNumber != guess && tries <= 5 {
        
        
        
        if randomNumber == guess! {
            print("you got it right")
        }
            
            
            
            
        else if guess! > randomNumber  {
            print("you didn't get it right😂😂😂,your number is greater than the random number ,guess again , your number of tries \(tries)")
            guess = Int(readLine()!)
            while guess == nil {
                print("Guess again!")
                guess = Int(readLine()!)
            }
            while guess! > 100{
                print("guess between 0-100")
                guess = Int(readLine()!)
            }
            while guess! < 0{
                print("guess between 0-100")
                guess = Int(readLine()!)}
            tries = tries + 1
        }
            
            
            
        else if guess! < randomNumber  {
            print("you didn't get it right😂😂😂,your number is less than the random number, guess again , your number of tries \(tries)  ")
            guess = Int(readLine()!)
            while guess == nil {
                print("Guess again!")
                guess = Int(readLine()!)
            }
            while guess! > 100{
                print("guess between 0-100")
                guess = Int(readLine()!)}
        }
        while guess! < 0{
            print("guess between 0-100")
            guess = Int(readLine()!)}
        tries = tries + 1
    }
    
    
    
    
    if tries > 5 {
        print("you have ran out of tries , you suck at this 😂😂😂")
        print(" your number was \(randomNumber)")
    }
    
    
    
    
    print("do you wanna play again yes / no ")
    playAgain = readLine()!
}














