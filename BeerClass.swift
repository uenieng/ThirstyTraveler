//
//  BeerClass.swift
//  
//
//  Created by 양문영 on 2016. 8. 17..
//
//

import Foundation



class BeerPlace {
    
    let name:String
    let type:PlaceType
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
}


class Brewery:BeerPlace{
    
    typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    //typealias yoyo
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)
    var brewedBeer:Array<Product> = []
    var bottledBeer:Array<Product> = []
    

}