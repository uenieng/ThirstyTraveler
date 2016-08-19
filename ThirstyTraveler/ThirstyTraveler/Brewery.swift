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
    var brewedPricelist:[String:Int]
    var bottledBPricelist:[String:Int]

    
    init (){
        
        super.init(name: <#T##String#>, type: <#T##String#>, location: <#T##(Double, Double)#>, officeNumber: <#T##Int#>, officeTime: <#T##[(String, Int, Int)]#>)
        
    }
    
    convenience init (name: String,location:(Double,Double), officeNumber: Int, officeTime:[(String, Int, Int)],brewedPricelist:[String:Int],bottledBPricelist:[String:Int])
        {
            self.name = name
            self.location = location
            self.officeNumber = officeNumber
            self.officeTime = officeTime
            self.brewedPricelist = brewedPricelist
            self.bottledBPricelist = bottledBPricelist
        }

    }
    
    




