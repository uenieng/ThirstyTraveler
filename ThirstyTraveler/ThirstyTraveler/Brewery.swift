//
//  Brewery.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 17..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation



class BeerPlace {
    
    let name:String
    //let type:PlaceType
    var ratings:Double?
    var location:(Double,Double)
    var wishlist:Bool=false
    var haveBeen:Bool=false
    
    init (name:String,location:(Double,Double)){
        self.name = name
        self.location = location
    }
}


class Brewery:BeerPlace{
    
    typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)
    var brewedBeer:Array<Product> = []
    var bottledBeer:Array<Product> = []

    
    
    
    //func SetBeerPlace (name:String,location:(Int,Int))->(){
        /*
        self.name = name
        self.location = location
        */
        
        
    //}
    
}

func createDefault() {

    var brewery1:Brewery = (BeerPlace.name:"brewery1", BeerPlace.location:(123,345))

}

