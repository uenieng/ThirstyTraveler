//: Playground - noun: a place where people can play

import UIKit



class WonyeongBeerPlace {
    
    var name:String = ""
    var type:String = ""
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
  
    
    init (name:String, type:String, location:(Double,Double)){
        self.name = name
        self.type = type
        self.location = location
        
    }
    
    
} //class 닫음





