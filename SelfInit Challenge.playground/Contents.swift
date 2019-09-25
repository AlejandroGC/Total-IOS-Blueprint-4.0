import UIKit

class User {
    var username: String
    var fullname: String
    var email: String
    var gender: Bool
    
    init(username: String, fullname: String, email: String, gender: Bool) {
        self.username = username
        self.fullname = fullname
        self.email = email
        self.gender = gender
    }
    
}

let davidUser = User(username: "dTang", fullname: "David", email: "david@hotmai.com", gender: true)

class Post {
    var text: String
    var username: String
    
    init(text: String, username: String){
        self.text = text
        self.username = username
    }
}

let post = Post(text: "Oh you mother....", username: davidUser.username)
