import Foundation

class UIColor {
    var hexNumber : String
    
    init(hexNumber : String){
        self.hexNumber = hexNumber
    }
}


class UIImage {
    var localFileName : String
    var width : Int = 500
    var height : Int = 500
    
    init(localFileName : String){
        self.localFileName = localFileName
    }
}

class UIView {
    var x : Int
    var y : Int
    var width : Int
    var height : Int
    var backgroundColor : UIColor = UIColor(hexNumber: "#ffffff")
    var subViews = [UIView]()
    
    init(x:Int,y:Int,width:Int,height:Int) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        
    func add(subView : UIView) {
        subViews.insert(subView, at: 0)
    }
        
    }
}

class UIImageView: UIView {

var image: UIImage

init(image: UIImage) {
self.image = image
super.init(x: 0, y: 0, width: image.width, height: image.height)
}
}

class UILabel: UIView {
var text: String

init(text: String, width: Int, height: Int) {
self.text = text

super.init(x: 0, y: 0, width: width, height: height)
}
}

class UIButton : UIView {
    var title : String
    init(title : String, width : Int, height : Int) {
        self.title = title
        super.init(x: 0, y: 0, width: width, height: height)
    }
}

