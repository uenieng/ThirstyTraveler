//: Playground - noun: a place where people can play

import UIKit



class BeerPlace {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
    var OfficeNumber:Int
    var OfficeTime:[Int:Int]
  
    
    init (name:String, type:String, location:(Double,Double), OfficeNumber:Int, OfficeTime:[Int:Int]){
        self.name = name
        self.type = type
        self.location = location
        self.OfficeNumber = OfficeNumber
        self.OfficeTime = OfficeTime
        
    }
    
    
} //class 닫음





