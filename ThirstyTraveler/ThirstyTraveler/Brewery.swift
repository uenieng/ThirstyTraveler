//
//  Brewery.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 17..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation



class Brewery:BeerPlace{
    
    typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)
    var brewedBeer:Array<Product> = []
    var bottledBeer:Array<Product> = []

    init (){
        super.init(name:"", location:(0,0))
        
        
        
        func SetBrewery(name:String,location:(Double,Double))
        {
            self.name = name
            self.location = location
        }

    }
    
    
}

var breweryClass:Array<Brewery> = []

func createDefault() -> [Brewery]{

    let brewery1 = Brewery()
    brewery1.SetBrewery(name:"brewery1", location:(123,345))

    breweryClass += [brewery1]
    
    return breweryClass
    
    
}

