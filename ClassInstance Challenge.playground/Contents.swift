import UIKit

class User {
    var username: String = ""
    var fullname: String = ""
    var email: String = ""
}

var user1 = User()
user1.email = "alejandro.g.carrillo@hotmail.com"
user1.fullname = "Alejandro Daniel Gonzalez Carrillo"
user1.username = "Alexcgzz"


class Post {
    var samplePost: String = ""
    var username: String = ""
}

var newPost = Post()
newPost.samplePost = "Its time get drunk and chill ass. "
newPost.username = user1.username
