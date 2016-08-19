
//
//  FilterToggle.swift
//  ThirstyTraveler
//
//  Created by cscoi017 on 2016. 8. 18.
//  Copyright © 2016년 geonsun. All rights reserved.
//

import Foundation

class DraftBeer : BeerPlace{
    var draftPriceList : [String:Int]
    var bottledDPriceList : [String:Int]
    init(){
        self.draftPriceList = [:]
        self.bottledDPriceList = [:]
        super.init(name:"", type:"", location:(0,0), officeNumber: 01000000000, officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init(officeTime:[(String,Int,Int)], draftPriceList:[String:Int], bottledDPriceList:[String:Int],OfficeNumber:Int,  name:String, type:String, location:(Double, Double))
    {
        self.init()
        self.officeTime = officeTime
        self.draftPriceList = draftPriceList
        self.bottledDPriceList = bottledDPriceList
        self.officeNumber = officeNumber
        self.name = name
        self.type = type
        self.location = location
    }
}

 //   let draft1 = DraftBeer(name:"버드나무",type:"Draft",location:(123,456),officeTime:[("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],officeNumber : 025478546,draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000])

 



