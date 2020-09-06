import UIKit

var str = "Hello, playground"

var fourSquareDistance = ["nearBy":[
    "1m" : ["Starbucks", "Apple Bees"],
    "5m" : ["Red Lobster", "Sunny Cafe"]
    ]
]



typealias RestaurantDatabase = [String : [String: [String]]]

func getRestaurants(in Distance: String, from Database: RestaurantDatabase) -> [String]? {
    guard let nearBy = Database["nearBy"], let restaurants = nearBy[Distance] else {
        return nil
    }
    
    return restaurants
}

