//: Playground - noun: a place where people can play

import UIKit


let cass = BeerPlace(name:"cass", type:"beerFactory", location:(137,125))
let hiddenTrack = BeerPlace(name:"Hidden Track", type:"beerBrewery", location:(136,123))
let birdnamu = BeerPlace(name:"Birdnamu", type:"beerBrewery", location:(123,456))
let nairobi = BeerPlace(name:"Nairobi", type:"beerDraft", location:(123,457))

class BeerPlace {
    
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





