//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    //TODO: Set up an outlet for the label
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        if (randomOption == userSelection) {
            resultText.text = "It's a tie"
        }
        if (randomOption.weakness == userSelection) {
            resultText.text = "You Win"
        }
        if (userSelection.weakness == randomOption) {
            resultText.text = "You Lost"
        }
        //TODO: Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        
    }
}
