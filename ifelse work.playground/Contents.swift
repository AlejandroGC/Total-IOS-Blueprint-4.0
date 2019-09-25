import UIKit

let userAge = 14
let newUsername = "alexcgzz"
let newPassword = "password123"
var username = "alexcgzz"
var password = "password123"

if userAge < 13 {
    print("You must be 13 years old to use this app.")
} else {
    if newUsername == username && newPassword == password {
        print("You can play the game!")
    } else {
        print("Wrong username or password!")
    }
}

print("Program continues...")
