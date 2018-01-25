//
//  main.swift
//  gussing game
//
//  Created by Americo Lopez on 1/23/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation

while true {
var randomNumber = Int(arc4random_uniform(100))
var guess: Int?
print("guess a number 0-100" )
while  true {
    guess = Int(readLine()!)!
if randomNumber == guess! {
var yes : 
    print("you got it right, do you wannna play agian \(yes)/no")
    
    
    
    
} else if guess! > randomNumber {
        print(" ooooooooo try again, your number is greater than the random number ,guess again")
    } else if guess! < randomNumber {
        print(" ooooooo try again, your number is less than the random number, guess again  ")
        
        
    }



}
}
    
    
    //if correct ask if they want to play again

// if incorrect tell them the correct answer and ask them to play again

    
    
    
    
    
    
    
    
    

