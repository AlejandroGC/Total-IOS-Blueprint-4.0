import UIKit

var str = "Hello, playground"

struct LocationTaken {
    var x: Int
    var y: Int
}

struct Photo {
    var data: NSData?
    var location: LocationTaken?
}

struct ProfileData {
    var photo : Photo?
    var uniqueID : String
}

struct Account {
    var username : String
    var profile : ProfileData?
    
    func getUserProfilePictureData() -> NSData? {
        if let profileData = self.profile,
            photo = profileData.photo {
            return photo.data
        } else {
            return nil
        }
    }
    
    // Optional Chaining
    func getProfilePictureBetterWay() -> NSData? {
        // if profile is not nil => access the data
        // if profile is nil => nil
        return self.profile?.photo?.data
    }
    
}


// Code Challenge

struct MediaPost {
    var id : String
    var byUser : Account
    
    func getUserLocation() -> LocationTaken? {
        return self.byUser.profile?.photo?.location
    }
}
