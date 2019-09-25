import UIKit

var str = "Hello, playground"

class User {
    let id: Int
    var username: String
    var fullname: String
    var email: String
    
    init(id: Int, username: String, fullname: String, email: String) {
        self.id = id
        self.username = username
        self.fullname = fullname
        self.email = email
    }
}

class Comment {
    var user: User
    var text: String
    
    init(user: User, text: String) {
        self.user = user
        self.text = text
    }
}

class Post {
    var likers: [User] = []
    
    init(likers: [User]) {
        self.likers = likers
    }
    
    func liked(likers: User) -> Bool {
        self.likers.append(likers)
        print("Has likeado la imagen!")
        return true
    }
}

var user1 = User(id: 1, username: "Kutse", fullname: "Alejandro Daniel Gonzalez Carrillo", email: "Alejandro.g.carrillo@hotmail.com")

var comentario = Comment(user: user1, text: "I love pigs!")

Post.liked(<#T##Post#>)
