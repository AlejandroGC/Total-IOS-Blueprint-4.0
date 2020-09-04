
// ********************
// 1.1 - Enums in Swift
// ********************

var programmingLanguages = ["objective-c", "swift", "java", "html", "css"]

func whichPlatformFor(language: String) -> String {
    switch language {
    case "objective-c", "swift" : return "iOS"
    case "html", "css" : return "web"
    case "java" : return "android"
    default: return "I don't know"
    }
}

// better

enum ProgrammingLanguage {
    case objective_c
    case swift
    case java
    case html
    case css
}

enum DevelopmentPlatform {
    case web
    case iOS
    case android
}

func whichPlatformFor(language: ProgrammingLanguage) -> DevelopmentPlatform
{
    switch language {
    case .objective_c, .swift: return .iOS
    case .html, .css: return .web
    case .java: return .android
    }
}

let css = ProgrammingLanguage.css
let platform = whichPlatformFor(language: css)

let swift = ProgrammingLanguage.swift
let platformForSwift = whichPlatformFor(language: swift)
if platformForSwift == .iOS {
    "yess!!!"
}

// 1.2 - Code Challenge

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum TapGesture {
    case noTap
    case singleTap
    case doubleTap
    case longTap
}

class FlappyBird {
    var locationOnScreen: Point
    
    init() {
        self.locationOnScreen = Point(x: 50, y: 50)
    }
    
    func didReceive(tapGesture: TapGesture) {
        
        locationOnScreen.x += 3
        
        switch tapGesture {
        case .noTap:
            locationOnScreen.y -= 5
        case .singleTap:
            locationOnScreen.y += 2
        case .doubleTap:
            locationOnScreen.y += 3
        case .longTap:
            locationOnScreen.y += 4
        }
    }
}

// 1.3 - Associated Values

import UIKit

enum ColorHelper {
    case rgb(CGFloat, CGFloat, CGFloat, CGFloat)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(hue: let hue, saturation: let saturation, brightness: let brightness, alpha: let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorHelper.rgb(255, 123, 29, 1.0).color()
ColorHelper.hsb(hue: 192.0, saturation: 232.4, brightness: 92.3, alpha: 1.0).color()

// 1.4 - Code Challenge

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
    
    func description() -> String {
        switch self {
        case .UPCA(let numberSystem, let manufacturer, let product, let check):
            return "UPC-A: \(numberSystem), \(manufacturer), \(product), \(check)."
        case .QRCode(let productCode):
            return "QR Code: \(productCode)."
        }
    }
}

// 1.5 - Raw Values

// The barcode example in Associated Values shows how cases of an enumeration can declare that they store associated values of different types. As an alternative to associated values, enumeration cases can come prepopulated with default values (called raw values), which are all of the same type.

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let character = ASCIIControlCharacter.tab
character.rawValue


enum StockType: Double {
    case apple = 96.68
    case facebook = 117.24
    case google = 717.78
    case microsoft = 52.30
}

var stocks: [StockType] = [.apple, .facebook, .google, .microsoft, .apple, .apple, .google, .facebook, .apple, .facebook]

func calculateTotal(stocks: [StockType]) -> Double {
    var total = 0.0
    
    for stock in stocks {
        total += stock.rawValue
    }
    
    return total
}

// 1.6 - Code Challenge Raw Value

enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

var coins: [Coin] = [.penny, .penny, .dime, .quarter, .nickel]

func calculateTotalValue(of coins: [Coin]) -> Double {
    var total = 0.0
    
    for coin in coins {
        total += coin.rawValue
    }
    
    return total
}

// ********************************************
// 2 - Optional - need to know about enum first
// ********************************************

// 2.1 Introduce Optional

class GameViewController {
    var questionLabel: UILabel?
    var question: String
    
    init(question: String, questionLabel: UILabel?) {
        self.question = question
        self.questionLabel = questionLabel
    }
    
    func viewDidLoad() {
        // questionLabel!.text = question  // this can crash
        
        if questionLabel != nil {
            questionLabel!.text = question
        } else {
            questionLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
            questionLabel!.text = question
        }
    }
}

let gameVC = GameViewController(question: "What is 5+5?", questionLabel: nil)   // this means there's no label created
gameVC.viewDidLoad()

// 2.2 Code Challenge

struct User {
    var username: String
    var address: String?
    var age: Int
    
    func getUserInformation() -> String {
        if address == nil {
            return "\(username) is \(age) years old."
        } else {
            return "\(username)'s address is \(address). \(username) is \(age) years old."
        }
    }
}

let me = User(username: "dtran123", address: nil, age: 21)
me.getUserInformation()

// 2.3 Optional Binding (if-let)

// introduction to Dictionary in Swift

var states: [String : String] = [
    "CA" : "California",
    "LA" : "Los Angeles",
    "PA" : "Pennsylvania",
    "WA" : "Washington",
    "MA" : "Massachusetts"
]

let ca = states["CA"]
let la = states["LA"]
let pa = states["PA"]

// but nil:
let ny = states["NY"]
let tx = states["tx"]

let key = "CA"
let state = states[key]
print("\(key) is \(state)")

if let caState = states[key] {
    print("\(key) is \(caState)")
} else {
    print("Ooops. There's no state matching this key")
}

// another example:

var weatherForecast : [String : [String : Int]] = [
    "today" : [
        "temperature" : 92,
        "humidity" : 98,
        "rain" : 82
    ],
    "tomorrow" : [
        "temperature" : 72,
        "humidity" : 12,
        "rain" : 99
    ]
]

if let todayWeather = weatherForecast["today"] {
    if let temperature = todayWeather["temperature"] {
        print("today's temperature is \(temperature)")
    }
}

// 2.3 Code Challenge

if let tomorrow = weatherForecast["tomorrow"] {
    if let rain = tomorrow["rain"] {
        print(rain)
    }
}

var programs = [
    "Total iOS Blueprint" : ["Swift", "Build Foursquare"],
    "Socialize Your Apps" : ["Build Facebook", "Build Messenger"]
]

if let tibCourses = programs["Total iOS Blueprint"] {
    print(tibCourses[0])
}

// 2.4 Downside of if-let, introduce guard let syntax

var weatherForecast1 = [
    "today" : [
        "temperature" : 92,
        "humidity" : 98
    ],
    "tomorrow" : [
        "temperature" : 72,
        "rain" : 99
    ]
]

typealias WeatherDictionary = [String : [String : Int]]

struct CurrentWeather {
    var temperature: Int
    var humidity: Int?
    var rain: Int?
}

// 1. Downside of if-let
func processWeather(for date: String, from weatherDictionary: WeatherDictionary) -> CurrentWeather? {
    if let today = weatherDictionary[date] {
        if let temp = today["temperature"], let humidity = today["humidity"], let rain = today["rain"] {
            
            return CurrentWeather(temperature: temp, humidity: humidity, rain: rain)
        } else {
            return nil
        }
    } else {
        return nil
    }
}

func processWeather2(for date: String, from weatherDictionary: WeatherDictionary) -> CurrentWeather? {
    guard let today = weatherDictionary[date], let temp = today["temperature"] else {
        return nil
    }
    
    return CurrentWeather(temperature: temp, humidity: today["humidity"], rain: today["rain"])
}

// 2.5 Code Challenge

var fourSquareDatabase = [
    "nearBy" : [
        "1m" : ["Starbucks", "Apple Bees"],
        "5m" : ["Red Lobster", "Sunny Cafe"]
    ]
]

typealias RestaurantDatabase = [String : [String : [String]]]
// [String : Dictionary<String, Array<String>>]

func getRestaurants(in distance: String, from database: RestaurantDatabase) -> [String]? {
    guard let nearBy = database["nearBy"], let restaurants = nearBy[distance] else {
        return nil
    }
    
    return restaurants
}

// 2.6 Optional Chaining

struct LocationTaken {
    var x: Int
    var y: Int
}

struct Photo {
    var data: NSData?
    var location: LocationTaken?
}

struct ProfileData {
    var photo: Photo?
    var uniqueID: String
}

struct Account {
    var username: String
    var profile: ProfileData?
    
    func notSoGoodWay() -> NSData? {
        if let profileData = self.profile {
            if let photo = profileData.photo {
                return photo.data
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    func getUserProfilePictureData() -> NSData? {
        return self.profile?.photo?.data
    }
}

// 2.7 Code Challenge



struct MediaPost {
    var id: String
    var byUser: Account
    
    func getUserLocation() -> LocationTaken? {
        return self.byUser.profile?.photo?.location
    }
}









