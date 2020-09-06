import UIKit

var str = "Hello, playground"

// Optionals Swift

struct User {
    var username: String
    var address: String? // nothingness
    var age: Int
    
    func getUserInformation() -> String {
        if address == nil {
            return "\(username) is \(age) years old."
        } else {
            return "\(username)'s address is \(address!). \(username) is \(age) years old."
        }
            
    }
    
}

var dtran = User(username: "dTran", address: nil, age: 22)
dtran.getUserInformation()

// print(dtran.address!) // Cant unwrap if its nil. Reference: the gift without something cant be unwrapped.

// force unwrap = !
// optional = ?

// ---------------------------- Optional Binding -------------------------------

var states:  [String:String] = [
    "CA" : "California",
    "LA" : "Los Angeles",
    "PA" : "Pennsylvania",
    "WA" : "Washington",
    "MA" : "Massachusetts"
]

let wa = states["WA"]
let ca = states["CA"]
let la = states["LA"]

var weatherForcast: [String : Int] = [
"temperature" : 92,
"humidity" : 98,
"rain" : 82
]

print(weatherForcast["temperature"])

if let temperature = weatherForcast["temperature"] {
    print(temperature)
}


