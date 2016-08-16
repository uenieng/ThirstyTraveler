//
//  Factory.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 16..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation


class Factory{
    var OfficeTime:[Int:Int]
    var ProgramList:[String]
    var OfficeNumber:Int
    var OfficeURL:String
    
    init(name:String ){
        
        self.OfficeTime = [0900:1700]
        self.ProgramList =  [""]
        self.OfficeNumber = 01000000000
        self.OfficeURL = "http//"
        
    }
    
}