//
//  ViewController.swift
//  Created by Shao-Tsu on 27/Oct/2023
//  Updated by Shao-Tsu on 29/Oct/2023
//  Project: diceCraps
//  Version: 4
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    // roll button
    @IBAction func rollDiceButton(_ sender: Any) {
        
        let diceArray = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")]
        
        leftDice.image = diceArray.randomElement()
        rightDice.image = diceArray.randomElement()
        
        
    }
    
    
}
