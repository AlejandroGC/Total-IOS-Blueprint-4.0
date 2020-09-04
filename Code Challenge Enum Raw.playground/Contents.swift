import UIKit

var str = "Hello, playground"

enum Coin: Double{
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

var monedas: [Coin] = [.penny,.penny,.dime,.nickel,.quarter]

func calculateTotalValue(coins:[Coin]) -> Double {
    var total = 0.0
    
    for coin in coins {
        total += coin.rawValue
    }
    return total
}

calculateTotalValue(coins: monedas)
