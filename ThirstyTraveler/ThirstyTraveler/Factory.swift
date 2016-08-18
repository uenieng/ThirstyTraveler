//
//  Factory.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 16..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation




class Factory : BeerPlace{
    var OfficeTime:[Int:Int]
    var ProgramList:[String]
    var OfficeNumber:Int
    var OfficeURL:String
    init(){
        
            
        self.OfficeTime = [0900:1700]
        self.ProgramList =  [""]
        self.OfficeNumber = 01000000000
        self.OfficeURL = "http//"
        super.init(name:"", type:"", location:(0,0))
    }
    
    
    func SetFactory(OfficeTime:[Int:Int], ProgramList:[String], OfficeNumber:Int, OfficeURL:String, name:String, type:String, location:(Double, Double))
    {
        self.OfficeTime = OfficeTime
        self.ProgramList = ProgramList
        self.OfficeNumber = OfficeNumber
        self.OfficeURL = OfficeURL
        self.name = name
        self.type = type
        self.location = location
    }
}




