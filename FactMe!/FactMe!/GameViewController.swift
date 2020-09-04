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
        super.viewDidLoad()
        
        pointLabel.text = "--"
        let starterImage = UIImage(named: "2")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start a new game!"
        
        falseButton.isEnabled = false
    }
    
    @IBAction func trueButtonDidTap() {
        if pointLabel.text == "--" {
            game.point = 0
            falseButton.isEnabled = true
        } else {
            game.point += 1
        }
        updateUI()
    }
    
    @IBAction func falseButtonDidTap() {
        game.point -= 1
        updateUI()
    }
    
    func updateUI() {
        let nextQuestion = game.getNextQuestion()
        let questionImage = game.getQuestionImageName()
        let image = UIImage(named: questionImage)
        questionImageView.image = image
        questionLabel.text = nextQuestion
        pointLabel.text = "\(game.point)"
    }
}


