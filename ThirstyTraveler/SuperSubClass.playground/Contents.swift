//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
class BeerPlace {
    
    let name:String
    let type:PlaceType
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
}
*/
class BeerPlace{
    let name:String
    let type:String
    var ratings:Double?
    var location:(Double,Double)
    
    
    init(name:String){
        self.name = name
    }
    
    convenience init(){
        self.init(name:"")
    }
}


/*class DraftBeer{
    let name:String
    var priceList:[String:Int] = [:]
    var time:(h:Int,m:Int)
    var openHours:[open:Int,close:time]
    
    
    init(name:String){
        self.name = name
        self.priceList = [:]
        self.time = (0,0)
        
    }
}*/


class DraftBeer : BeerPlace{
    var priceList:[String:Int]
    
    init(pricelist:[String:Int]){
        self.priceList = priceList
        super.init(name:"")
        
    }
    override init(name:String){
        self.priceList = [:]
        super.init(name:name)
    }
}

