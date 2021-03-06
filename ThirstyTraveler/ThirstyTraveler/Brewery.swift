//
//  Brewery.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 17..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation



class Brewery:BeerPlace{
    
 /*   typealias hours = (openHour:Int,openMinute:Int,closeHour:Int,closeHour:Int)
    typealias Product = [String:Int]
    
    var workingHour:hours = (0,0,0,0)*/
    var brewedPricelist:[String:Int]?
    var bottledBPricelist:[String:Int]?

    
    init (){
        self.bottledBPricelist = [:]
        self.brewedPricelist = [:]
        
        super.init(name:"", type:"", location:(0,0),officeNumber:"010-0000-0000",officeTime:[("",0,0)])
        
        
            
    }
    
    convenience init (name: String, type: String, location:(Double,Double), officeNumber: String, officeTime:[OpenTime],brewedPricelist:[String:Int],bottledBPricelist:[String:Int])
        {
            self.init()
            self.name = name
            self.type = type
            self.location = location
            self.officeNumber = officeNumber
            self.officeTime = officeTime
            self.brewedPricelist = brewedPricelist
            self.bottledBPricelist = bottledBPricelist
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    }
//    
//    
//var breweryClass:Array<Brewery> = []
//
//
//func createDefault() -> [Brewery]{
//
//    
//    
//    
//    let brewery11 = Brewery(name:"brewery1", type:"Brewery", location:(123,345), officeNumber:"", officeTime:[("Mon",1200,1800)], brewedPricelist:["":0],bottledBPricelist:["":0])
//
//    breweryClass += [brewery11]
//    
//    return breweryClass
//    
//}

