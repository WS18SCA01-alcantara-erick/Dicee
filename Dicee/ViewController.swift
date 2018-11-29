//
//  ViewController.swift
//  Dicee
//
//  Created by Erick Alcantara on 11/28/18.
//  Copyright © 2018 Erick Alcantara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    //MARK: Outlets

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedDiceImages()
    }

    //MARK: Actions
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updatedDiceImages()
    }
    
    func updatedDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updatedDiceImages()
    }

} //class

