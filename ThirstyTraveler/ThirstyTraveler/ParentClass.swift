//: Playground - noun: a place where people can play

import UIKit



class BeerPlace {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=true
    var haveBeen:Bool=true
    var officeNumber:String
    var officeTime:[(String,Int,Int)]
    var address:String=""
    var placeID:String=""
    
    init (name:String, type:String, location:(Double,Double), officeNumber:String, officeTime:[(String,Int,Int)]){
        self.name = name
        self.type = type
        self.location = location
        self.officeNumber = officeNumber
        self.officeTime = officeTime
        
    }
    
    
} //class 닫음





