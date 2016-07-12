//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6a: UIView!
    @IBOutlet weak var dice6b: UIView!
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    var numberOfRolls = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dice1.hidden = true
        dice2.hidden = true
        dice3.hidden = true
        dice4.hidden = true
        dice5.hidden = true
        dice6a.hidden = true
        dice6b.hidden = true
        
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
        
    }
    
    @IBAction func rollDice(sender: AnyObject) {
        let diceResult = randomDiceRoll()
        numberOfRolls += 1
        rollDiceResult(numberOfRolls, dice: diceResult)
        
        switch diceResult {
            case 1:
                dice1.hidden = false
                //other hidden views
                dice2.hidden = true
                dice3.hidden = true
                dice4.hidden = true
                dice5.hidden = true
                dice6a.hidden = true
                dice6b.hidden = true
            case 2:
                dice2.hidden = false
                dice3.hidden = false
                //other hidden views
                dice1.hidden = true
                dice4.hidden = true
                dice5.hidden = true
                dice6a.hidden = true
                dice6b.hidden = true

            case 3:
                dice1.hidden = false
                dice2.hidden = false
                dice3.hidden = false
                //other hidden views
                dice4.hidden = true
                dice5.hidden = true
                dice6a.hidden = true
                dice6b.hidden = true
            case 4:
                dice2.hidden = false
                dice3.hidden = false
                dice4.hidden = false
                dice5.hidden = false
                //other hidden views
                dice1.hidden = true
                dice6a.hidden = true
                dice6b.hidden = true
            case 5:
                dice1.hidden = false
                dice2.hidden = false
                dice3.hidden = false
                dice4.hidden = false
                dice5.hidden = false
                //other hidden views
                dice6a.hidden = true
                dice6b.hidden = true
            case 6:
                dice2.hidden = false
                dice3.hidden = false
                dice4.hidden = false
                dice5.hidden = false
                dice6a.hidden = false
                dice6b.hidden = false
                //other hidden views
                dice1.hidden = true
            default:
                print("Roll the dice!")
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rollDiceResult(rollNumber: Int, dice: Int) {
            switch rollNumber {
                case 1:
                    roll1.hidden = false
                    roll1.text = String(dice)
                case 2:
                    roll2.hidden = false
                    roll2.text = String(dice)
                case 3:
                    roll3.hidden = false
                    roll3.text = String(dice)
                case 4:
                    roll4.hidden = false
                    roll4.text = String(dice)
                case 5:
                    roll5.hidden = false
                    roll5.text = String(dice)
                case 6:
                    roll6.hidden = false
                    roll6.text = String(dice)
                default:
                    print("Restart!")
            }
    }

//THE END
}
