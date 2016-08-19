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

 //   let draft1 = DraftBeer(name:"버드나무",type:"Draft",location:(123,456),officeTime:[("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],officeNumber : 025478546,draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000])

    
    
    var draftArray:[DraftBeer] = []
    
    
    func initializeDraft() -> [DraftBeer]{
        
        let draft1 = DraftBeer(officeTime: [("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : 025478546, name:"버드나무",type:"Draft", location:(123,456))
        
        let draft2 = DraftBeer(officeTime: [("월~금",1800,2400),("토,일",1930,0100)],draftPriceList:["IPA4":7000,"Idk":8000,"Wtf":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : 025478546, name:"버드나무",type:"Draft", location:(4545,456))
        
        let draft3 = DraftBeer(officeTime: [("월",0000,0000),("화~일",1700,2300)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : 025478546, name:"버드나무",type:"Draft", location:(123,456))
        
        let draft4 = DraftBeer(officeTime: [("월~일",1700,2400)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : 025478546, name:"버드나무",type:"Draft", location:(123,456))
        
        let draft5 = DraftBeer(officeTime: [("월~금",1800,2330),("토",1700,0230),("일",0000,0000)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : 025478546, name:"버드나무",type:"Draft", location:(123,456))
        
        
        
        
        draftArray += [draft1,draft2,draft3,draft4,draft5]
        
        return   draftArray}





