//
//  ViewController.swift
//  BrightDay
//
//  Created by Alejandro Daniel Gonzalez on 5/25/20.
//  Copyright © 2020 Alejandro Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    
    var quoteBook = QuoteBook()
    
    @IBAction func getNewQuote() {
        let newQuote = quoteBook.getRandomQuote()
        let author = quoteBook.getAuthor(for: newQuote)
        let imageName = quoteBook.getImageName(for: author)
        
        quoteTextLabel.text = newQuote
        authorNameLabel.text = author
        authorImageView.image = UIImage(named: imageName)
        
    }


}

