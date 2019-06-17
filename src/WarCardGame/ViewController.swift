//
//  ViewController.swift
//  WarCardGame
//
//  Created by Rodrigo Sant Ana on 15/06/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playerScore = 0
    var cpuScore = 0
    
    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    fileprivate func calculateTheWinner(_ leftCardNumber: Int, _ rightCardNumber: Int) {
        if leftCardNumber > rightCardNumber {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else if rightCardNumber > leftCardNumber{
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        
        leftCardView.image = UIImage(named: "card\(leftCardNumber)")
        rightCardView.image = UIImage(named: "card\(rightCardNumber)")
        
        calculateTheWinner(leftCardNumber, rightCardNumber)
        
        
    }
    
}

