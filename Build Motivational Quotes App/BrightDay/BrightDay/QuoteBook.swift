//
//  QuoteBook.swift
//  BrightDay
//
//  Created by Alejandro Daniel Gonzalez on 5/25/20.
//  Copyright © 2020 Alejandro Gonzalez. All rights reserved.
//

import Foundation

class QuoteBook {
    var quotes : [String] = ["If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.","No matter how small you start, start something that matters.", "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    var authors : [String] = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]
    var imageNames : [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    func getRandomQuote() -> String {
        let randomIndex = Int.random(in: 0...(quotes.count - 1))
        return quotes[randomIndex]
    }
    
    func getAuthor(for quote: String) -> String {
        if let index = quotes.firstIndex(of: quote) {
            return authors[index]
        } else {
            return ""
        }
    }
    
    func getImageName(for author: String) -> String {
        if let index = authors.firstIndex(of: author) {
            return imageNames[index]
        } else {
            return ""
        }
    }
    
}
