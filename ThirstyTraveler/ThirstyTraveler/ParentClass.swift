//: Playground - noun: a place where people can play

import UIKit

typealias OpenTime = (day:String, open:Int, close:Int)

class BeerPlace:NSObject, NSCoding {
    
    
    var name:String = ""
    var type:String = ""
    var ratings:Double = 0.0
    var location:(Double,Double)
    var wishlist:Bool=true
    var haveBeen:Bool=false
    var officeNumber:String
    var officeTime:[OpenTime]
    var address:String=""
    var placeID:String=""
    
    init (name:String, type:String, location:(Double,Double), officeNumber:String, officeTime:[OpenTime]){
        self.name = name
        self.type = type
        self.location = location
        self.officeNumber = officeNumber
        self.officeTime = officeTime
        
    } // init
    
    
    required init?(coder aDecoder: NSCoder) {
//        self.name = aDecoder.decodeObjectForKey("name") as! String
//        self.type = aDecoder.decodeObjectForKey("type") as! String
//        self.ratings = aDecoder.decodeObjectForKey("ratings") as! Double
        self.location.0 = aDecoder.decodeObjectForKey("location.0") as! Double
        self.location.1 = aDecoder.decodeObjectForKey("location.1") as! Double
        self.wishlist = aDecoder.decodeObjectForKey("wishlist") as! Bool
        self.haveBeen = aDecoder.decodeObjectForKey("haveBeen") as! Bool
        self.officeNumber = aDecoder.decodeObjectForKey("officeNumber") as! String
        self.officeTime = aDecoder.decodeObjectForKey("officeTime") as! [OpenTime]
        self.address = aDecoder.decodeObjectForKey("address") as! String
        self.placeID = aDecoder.decodeObjectForKey("placeID") as! String
    }

    func encodeWithCoder(aCoder: NSCoder) {
//        aCoder.encodeObject(self.name, forKey: "name")
//        aCoder.encodeObject(self.type, forKey: "type")
//        aCoder.encodeObject(self.ratings, forKey: "ratings")
//        aCoder.encodeObject(self.location.0, forKey: "location.0")
//        aCoder.encodeObject(self.location.1, forKey: "location.1")
        aCoder.encodeObject(self.wishlist, forKey: "wishlist")
        aCoder.encodeObject(self.haveBeen, forKey: "haveBeen")
//        aCoder.encodeObject(self.officeNumber, forKey: "officeNumber")
//        aCoder.encodeObject(self.officeTime, forKey: "officeTime")
//        aCoder.encodeObject(self.address, forKey: "address")
        aCoder.encodeObject(self.placeID, forKey: "placeID")
    }
    
 
    
} //class 닫음





