//
//  ViewController.swift
//  Dicee
//
//  Created by Riya Kaniyawala on 08/06/19.
//  Copyright © 2019 Ravina Kaniyawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var lbldiceroll: UILabel!
    

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbldiceroll.isHidden = true
        updatediceimages()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRollPressed(_ sender: UIButton)
    {
        updatediceimages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updatediceimages()
    }
    func updatediceimages()
    {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        //        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        print(diceArray[randomDiceIndex1] + diceArray[randomDiceIndex2] )
        print(" 1st dice \(randomDiceIndex1)")
        print("2nd dice \(randomDiceIndex2)")
        
        lbldiceroll.isHidden = false
        
        
        let Total = randomDiceIndex1+1 + randomDiceIndex2+1
        lbldiceroll.text = "Your roll is: \(Total)"
        print("Your roll is: \(Total)")
        //0 ave to display ni thay so +1 karyu6
        //        print("dice\(randomDiceIndex1+1)")
        //        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1+1)")
        //        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2+1)")
    }
}

