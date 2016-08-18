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
    var wishList:Bool = false
    var visited:Bool = false
    
    init(name:String,type:String,location:(Double,Double)){
        self.name = name
        self.location = location
        self.
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
        self.priceList = [:]
        super.init(name:"")
        
    }
    override init(name:String){
        self.priceList = [:]
        super.init(name:name)
    }
}



class Factory : BeerPlace{
    
    var OfficeTime:[Int:Int]
    var ProgramList:[String]
    var OfficeNumber:Int
    var OfficeURL:String
    init(){
        
        
        self.OfficeTime = [0900:1700]
        self.ProgramList =  [""]
        self.OfficeNumber = 01000000000
        self.OfficeURL = "http//"
        super.init(name:"", type:"", location:(0,0))
    }
    
    
    func SetFactory(OfficeTime:[Int:Int], ProgramList:[String], OfficeNumber:Int, OfficeURL:String, name:String, type:String, location:(Double, Double))
    {
        self.OfficeTime = OfficeTime
        self.ProgramList = ProgramList
        self.OfficeNumber = OfficeNumber
        self.OfficeURL = OfficeURL
        self.name = name
        self.type = type
        self.location = location
    }

}




class Brewery : BeerPlace{
    
    typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)
    var brewedBeer:Array<Product> = []
    var bottledBeer:Array<Product> = []

}







class Draft : BeerPlace{
    
}
