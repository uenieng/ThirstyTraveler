//: Playground - noun: a place where people can play

import UIKit


class BeerPlace {
 
    let name:String
    let type:PlaceType
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
    
    enum PlaceType{
        case beerFactory
        case beerBrewery
        case beerDraft
        
        var placeTypeTitle:String {
            get {
                let titleString:String
                switch self{
                case .beerFactory:
                    titleString = "맥주공장"
                case .beerBrewery:
                    titleString = "맥주양조장"
                case .beerDraft:
                    titleString = "DraftBeer"
                }
                return titleString
            }//get 닫음
        }//place type title 닫음
    }// enum placetype 닫음
    
    init (name:String, type:PlaceType, location:(Double,Double)){
        self.name = name
        self.type = type
        self.location = location
        
    }
    
    
} //class 닫음


let cass = BeerPlace(name:"cass", type:.beerFactory, location:(137,125))
let hiddenTrack = BeerPlace(name:"Hidden Track", type:.beerBrewery, location:(136,123))
let birdnamu = BeerPlace(name:"Birdnamu", type:.beerBrewery, location:(123,456))
let nairobi = BeerPlace(name:"Nairobi", type:.beerDraft, location:(123,457))




