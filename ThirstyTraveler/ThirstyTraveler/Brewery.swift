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
        
        super.init(name: <#T##String#>, type: <#T##String#>, location: <#T##(Double, Double)#>, OfficeNumber: <#T##Int#>, OfficeTime: <#T##[(String, Int, Int)]#>)
        
    }
    
    convenience init (name: String,location:(Double,Double), OfficeNumber: Int, OfficeTime:[(String, Int, Int)])
        {
            self.name = name
            self.location = location
            self.OfficeNumber = OfficeNumber
            self.OfficeTime = OfficeTime
        }

    }
    
    


var breweryClass:Array<Brewery> = []

func createDefault() -> [Brewery]{

    let brewery1 = Brewery(name:"brewery1", location:(123,345), OfficeNumber:1234452932923, OfficeTime:[("Mon",1200,1800)])

    breweryClass += [brewery1]
    
    return breweryClass
    
    
}

