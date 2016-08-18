//
//  MakingFactoryInstance.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 18..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation
var FactoryArray:[Factory] = []
func initialize() -> [Factory]{
    let casss = Factory(OfficeTime: [("월~금",0900,1700),("토~일",0000,0000)], ProgramList:["맥주만들기"], OfficeNumber:01035867237, OfficeURL:"http://etc", name:"casss", type:"Factory", location:(134,230))
    FactoryArray += [casss]
    
    return   FactoryArray
}