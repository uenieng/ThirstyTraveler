//
//  Draft.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 8. 18..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation

class DraftBeer : BeerPlace{
    var draftPriceList : [String:Int]
    var bottledPriceList : [String:Int]
    init(){
        self.draftPriceList = [:]
        self.bottledPriceList = [:]
        super.init(name:"", type:"", location:(0,0), officeNumber: 01000000000, officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init(officeTime:[(String,Int,Int)], draftPriceList:[String:Int], bottledPriceList:[String:Int],OfficeNumber:Int,  name:String, type:String, location:(Double, Double))
    {
        self.init()
        self.officeTime = officeTime
        self.draftPriceList = draftPriceList
        self.bottledPriceList = bottledPriceList
        self.officeNumber = officeNumber
        self.name = name
        self.type = type
        self.location = location
    }
}

