//
//  Factory.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 16..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation




class Factory : BeerPlace{
    var programList:[String]
    var officeURL:String
    init(){
        self.programList =  [""]
        self.officeURL = "http//"
        super.init(name:"", type:"", location:(0,0), officeNumber: "010-0000-0000", officeTime: [("월~일",0900,1800)])
    }
    
    
    convenience init( name:String, type:String, location:(Double, Double),officeTime:[(String,Int,Int)], programList:[String], officeNumber:String, officeURL:String)
    {
        self.init()
        self.officeTime = officeTime
        self.programList = programList
        self.officeNumber = officeNumber
        self.officeURL = officeURL
        self.name = name
        self.type = type
        self.location = location
    }
}




