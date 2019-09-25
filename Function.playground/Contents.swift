import UIKit

let grade1 = 90
let grade2 = 88
let grade3 = 93

let sumGrades = grade1 + grade2 + grade3
let avgGrade = Double(sumGrades) / 3.0

// ***

let age1 = 20
let age2 = 39
let age3 = 2
let avgAges = Double(age1 + age2 + age3) / 3.0

func average(n1: Int, n2: Int, n3: Int) -> Double {
    let sum = n1 + n2 + n3
    let average = Double(sum) / 3.0
    
    return average
}

let ex1 = average(n1: 1, n2: 2, n3: 3)
let ex2 = average(n1: 90, n2: 92, n3: 35)
let ex3 = average(n1: 14, n2: 28, n3: 31)

var numbers = [1]
for _ in 1...1000 {
    numbers.append(Int.random(in: 1...100))
}

numbers

func average(numbers: [Int]) -> Double {
    var sum = 0
    for i in 0...(numbers.count - 1) {
        sum = sum + numbers[i]
    }
    
    return Double(sum) / Double(numbers.count)
}

average(numbers: numbers) 

