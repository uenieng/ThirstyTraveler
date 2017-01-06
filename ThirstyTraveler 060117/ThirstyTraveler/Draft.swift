
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
        super.init(name:"", type:"", location:(0,0), officeNumber: "010-0000-0000", officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init(officeTime:[OpenTime], draftPriceList:[String:Int], bottledDPriceList:[String:Int],OfficeNumber:String,  name:String, type:String, location:(Double, Double))
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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

 //   let draft1 = DraftBeer(name:"버드나무",type:"Draft",location:(123,456),officeTime:[("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],officeNumber : 025478546,draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000])

 



