import UIKit

var str = "Hello, playground"

var billBeforeTax = 50.0
var taxPercentage = 0.06
var numberOfPeople: Int = 2
let tipPercentage = 15

billBeforeTax = 59.95


let taxAmount = billBeforeTax * taxPercentage
let totalBill = billBeforeTax + taxAmount
var tipAmount: Double = totalBill * Double(tipPercentage) / 100

tipAmount = (billBeforeTax + taxAmount) * Double(tipPercentage) / 100
