//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    var tappedIcon:GameOption?
    
    @IBAction func mainButton(sender: UIButton) {
        switch sender.tag {
            case GameOption.rock.rawValue:
                tappedIcon = GameOption.rock
            case GameOption.scissors.rawValue:
                tappedIcon = GameOption.scissors
            case GameOption.paper.rawValue:
                tappedIcon = GameOption.paper
            default:
                print("default")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultsViewController
        vc?.userSelection = tappedIcon
    }
    
    
}
