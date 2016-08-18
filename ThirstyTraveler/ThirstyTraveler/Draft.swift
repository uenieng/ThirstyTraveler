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
        super.init(name:"", type:"", location:(0,0), OfficeNumber: 01000000000, OfficeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init(OfficeTime:[(String,Int,Int)], ProgramList:[String], OfficeNumber:Int, OfficeURL:String, name:String, type:String, location:(Double, Double))
    {
        self.init()
        self.draftPriceList = draftPriceList
        self.bottledPriceList = bottledPriceList
        self.OfficeNumber = OfficeNumber
        self.name = name
        self.type = type
        self.location = location
    }
}

