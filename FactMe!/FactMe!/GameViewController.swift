//
//  GameViewController.swift
//  FactMe!
//
//  Created by Alejandro Daniel Gonzalez on 9/3/20.
//  Copyright © 2020 Alejandro Gonzalez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var game: QMeeGame = QMeeGame()
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func trueButtonDidTap() {
        
    }
    
    @IBAction func falseButtonDidTap() {
        
    }
}

