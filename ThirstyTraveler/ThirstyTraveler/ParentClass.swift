//: Playground - noun: a place where people can play

import UIKit



class BeerPlace {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=true
    var haveBeen:Bool=true
    var officeNumber:Int
    var officeTime:[(String,Int,Int)]
  
    
    init (name:String, type:String, location:(Double,Double), officeNumber:Int, officeTime:[(String,Int,Int)]){
        self.name = name
        self.type = type
        self.location = location
        self.officeNumber = officeNumber
        self.officeTime = officeTime
        
    }
    
    
} //class 닫음





