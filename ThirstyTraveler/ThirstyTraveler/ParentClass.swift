//: Playground - noun: a place where people can play

import UIKit

typealias OpenTime = (day:String, open:Int, close:Int)

class BeerPlace {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=true
    var haveBeen:Bool=true
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
        
    }
    
    
} //class 닫음





