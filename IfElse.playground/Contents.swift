import UIKit

var str = "Hello, playground"

//Boolean True or False
1 < 2
var condition  = 1 < 2
condition = ("7" == "a string")
condition = ("A" == "A")

var myName = "David Trong Tran"
let numberOfCharacters = myName.count
let isLongName = numberOfCharacters > 10

if isLongName {
    print("You have a long name")
} else {
    print("Oh, it's okay.")
}

print("continue with the program")

var groceryList = ["brocoli", "noodles", "beef", "chicken"]
let newItem = "chicken"

groceryList.contains(newItem)

if groceryList.contains(newItem) {
    print("You already added \(newItem).")
    print("Find another one.")
} else {
    groceryList.append(newItem)
    print("item added!")
    print("your new shopping list is now: \(groceryList)")
}

