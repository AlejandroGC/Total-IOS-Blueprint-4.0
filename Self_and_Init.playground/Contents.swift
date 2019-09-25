import UIKit

var str = "Hello, playground"

class User {
    var username: String
    var fullname: String
    var email: String
    
    init(username: String, fullname: String, email: String) {
        self.username = username
        self.fullname = fullname
        self.email = email
    }
    
}

let alexUser = User(username: "Alexcgzz", fullname: "Alejandro Gonzalez", email: "Alex@hotmail.com")

