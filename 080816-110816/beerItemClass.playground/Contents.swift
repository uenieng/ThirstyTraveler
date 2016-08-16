//: Playground - noun: a place where people can play

import UIKit


class beerPlace {
 
    let name:String
    let type:placeType
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
    
    enum placeType{
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
    
    init (
    
} //class 닫음
