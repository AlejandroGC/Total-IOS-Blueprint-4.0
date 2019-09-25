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
    
    func signupSuccessfully() -> Bool {
        print("Making a sign up request to our server")
        print("...")
        print("Sign up successfully!")
        print("Welcome \(username)")
        print("A confirmation email has been sent to \(email)")
        return true
    }
}

let david = User(username: "david", fullname: "David Tran", email: "Support@teamwallie.com")
david.signupSuccessfully()






class Post {
    var text: String
    let username: String
    var likers: [User] = []
    var comments: [Comment] = []
    
    init(text: String, username: String, likers: [User]) {
        self.text = text
        self.username = username
        self.likers = likers
        
    }
    
    func liked(by user: User) -> Bool {
        likers.append(user)
        print("Has likeado la imagen!")
        return true
    }
}


class Comment {
    var text: String
    var user: User
    
    init(text: String, user: User) {
        self.text = text
        self.user = user
    }
}


var myPost = Post(text: "Hello again!", username: david.username, likers: Post.)



