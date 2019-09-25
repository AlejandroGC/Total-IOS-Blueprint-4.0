import UIKit


func bill(amount: Double, taxP: Double, tipP: Double) -> Double{
    let tax = amount * taxP / 100.0
    let bill = amount + tax
    return bill * tipP / 100.0
    
}

bill(amount: 150, taxP: 10, tipP: 15)

func max(numbers: [Int]) -> Int {
    var max = Int.min
    
    for i in 0..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
    }
    
    return max
}

