//
//  ViewController.swift
//  Created by Shao-Tsu on 27/Oct/2023
//  Project: diceCraps
//  Version: 2
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    var leftDiceNum = Int.random(in: 0..<6)
    var rightDiceNum = Int.random(in: 0..<6)
    var subtractNum = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftDice.image = #imageLiteral(resourceName: "diceOne")
        rightDice.image = #imageLiteral(resourceName: "diceOne")
    }

    @IBAction func rollDiceButton(_ sender: Any) {
        
        leftDice.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")][leftDiceNum]
        rightDice.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")][rightDiceNum]
        
        if (leftDiceNum - subtractNum > 6 ||
            rightDiceNum - subtractNum > 6) {
            leftDiceNum = leftDiceNum - subtractNum
            rightDiceNum = rightDiceNum - subtractNum
        }
        else if (leftDiceNum - subtractNum < 0 || 
                 rightDiceNum - subtractNum < 0) {
            leftDiceNum = leftDiceNum + subtractNum
            rightDiceNum = rightDiceNum + subtractNum
        }
        // need to allow continue clicking within the number range
        // seem needed loop
        //for leftDiceNum in leftDice.image {
            
        //}

    }
    
}

