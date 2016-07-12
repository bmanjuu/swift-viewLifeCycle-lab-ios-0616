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
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
