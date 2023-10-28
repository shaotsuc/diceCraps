//
//  ViewController.swift
//  Created by Shao-Tsu on 27/Oct/2023
//  Updated by Shao-Tsu on 28/Oct/2023
//  Project: diceCraps
//  Version: 3
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    var leftDiceNum = Int.random(in: 0 ... 2)
    var rightDiceNum = Int.random(in: 0 ... 2)
    let randomNum = Int.random(in: 0 ... 2)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftDice.image = #imageLiteral(resourceName: "diceOne")
        rightDice.image = #imageLiteral(resourceName: "diceOne")
    }

    @IBAction func rollDiceButton(_ sender: Any) {
        
        leftDice.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")][leftDiceNum]
        rightDice.image = [#imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")][rightDiceNum]

        
        leftDiceNum = leftDiceNum + randomNum
        rightDiceNum = rightDiceNum + randomNum
        
        // to not get out of index range
        if (leftDiceNum > 5 ||
            rightDiceNum > 5) {
            leftDiceNum = Int.random(in: 0 ... 2)
            rightDiceNum = Int.random(in: 0 ... 2)
        }
        // print("left \(leftDiceNum), right \(rightDiceNum)")
    }
    
}

