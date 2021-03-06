//
//  MakingFactoryInstance.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 18..
//  Copyright © 2016년 moonyoung. All rights reserved.
//
//

import Foundation
var factoryArray:[Factory] = []

func defaultFactory() -> [Factory]{
   
    let factory1 = Factory(name:"cass", type:"Factory", location:(37.586160,127.029218), officeTime: [("월~금",0900,1700),("토~일",0000,0000)], programList:["맥주만들기"], officeNumber:"01035867237", officeURL:"http://www.youtube.com")
    factory1.placeID = "factory1"
    
    let factory2 = Factory(name:"maecdu", type:"Factory", location:(37.585923,127.029686),officeTime:[("월~금",0900,1700),("토~일",0000,0000)], programList:["맥듀만들기","공장투어"], officeNumber:"028549587", officeURL:"http://www.naver.com" )
    factory2.placeID = "factory2"

    let factory3 = Factory(name:"maecju", type:"Factory", location:(37.585535,127.030044),officeTime:[("월~목",0900,1700),("금",0000,0000),("토~일",1000,1500)], programList:["맥쥬만들기"], officeNumber:"025784984", officeURL:"http://etc" )
    factory3.placeID = "factory3"
    
    let factory4 = Factory( name:"Hite", type:"Factory", location:(37.585512,127.028567),officeTime: [("월~금",0900,1700),("토~일",0000,0000)], programList:["하이트만들기","공장투어"], officeNumber:"025804567", officeURL:"http://www.daum.net")
    factory4.placeID = "factory4"
    
    let factory5 = Factory(name:"하이네켄", type:"Factory", location:(37.582700,127.028995), officeTime: [("월~금",0900,1700),("토~일",0000,0000)], programList:["하이네켄만들기","시음하기","공장투어"], officeNumber:"07045687982", officeURL:"http://facebook.com" )
    factory5.haveBeen = true
    
        factoryArray += [factory1,factory2,factory3,factory4,factory5]
    
    
    
    return   factoryArray
}




var draftArray:[DraftBeer] = []


func defaultDraft() -> [DraftBeer]{
    
    let draft1 = DraftBeer(officeTime: [("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : "025478546", name:"Korea Draft",type:"Draft", location:(37.584595,127.029287))
    draft1.placeID = "draft1"
    
    let draft2 = DraftBeer(officeTime: [("월~금",1800,2400),("토,일",1930,0100)],draftPriceList:["IPA4":7000,"Idk":8000,"Wtf":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : "025478546", name:"Irish Pub",type:"Draft", location:(37.583979,127.029330))
    draft2.placeID = "draft2"
    
    let draft3 = DraftBeer(officeTime: [("월",0000,0000),("화~일",1700,2300)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : "025478546", name:"the Good Beer",type:"Draft", location:(37.584204,127.029587))
    draft3.placeID = "draft3"
    
    let draft4 = DraftBeer(officeTime: [("월~일",1700,2400)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : "025478546", name:"The Cask",type:"Draft", location:(37.584083,127.029901))
    draft4.placeID = "draft4"
    
    let draft5 = DraftBeer(officeTime: [("월~금",1800,2330),("토",1700,0230),("일",0000,0000)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : "025478546", name:"Kwak.pub",type:"Draft", location:(37.584390,127.030162))
    draft5.placeID = "draft5"
    
    
    
    draftArray += [draft1,draft2,draft3,draft4,draft5]
    
    
    return   draftArray}



var breweryArray:[Brewery] = []

func defaultBrewery() -> [Brewery]{
    
    
    let brewery1 = Brewery(name:"korea brewery", type:"Brewery", location:(37.582887,127.029656), officeNumber:"01085489535", officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
    brewery1.placeID = "brewery1"

    let brewery2 = Brewery(name:"peace in", type:"Brewery",location:(37.582919,127.030068), officeNumber:"02784568", officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
    brewery2.placeID = "brewery2"
    
    let brewery3 = Brewery(name:"making your's", type:"Brewery",location:(37.583451,127.029110), officeNumber:"025189638", officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
    brewery3.placeID = "brewery3"
    
    let brewery4 = Brewery(name:"BrewBrew", type:"Brewery",location:(37.584393,127.029901), officeNumber:"1234452932923", officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
    brewery4.placeID = "brewery4"
    
    
    let brewery5 = Brewery(name:"Boubou", type:"Brewery",location:(37.582557,127.028976), officeNumber:"1234452932923", officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
    brewery5.placeID = "brewery5"
    
    
    breweryArray += [brewery1, brewery2, brewery3, brewery4, brewery5]
    

    
    return breweryArray
    

}


var factoryArray0:[Factory] = defaultFactory()
var breweryArray0:[Brewery] = defaultBrewery()
var draftArray0:[DraftBeer] = defaultDraft()


func jsonToInstance(){
    

    
    guard let path = NSBundle.mainBundle().pathForResource("data", ofType: "json") else{
        print("error finding file")
        return
    }
    
    do{
        let data: NSData? = NSData(contentsOfFile: path)
        if let jsonResult: NSArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSArray {
            for element in jsonResult{
                let phoneNumber = element["phoneNumber"] as! String
                var longitude = element["longitude"] as! Double
                longitude = round(longitude*1000000)/1000000
                var latitude = element["latitude"] as! Double
                latitude = round(latitude*1000000)/1000000
                let address = element["adress"] as! String
                let placeID = element["placeID"] as! String
                let website = element["website"] as! String
                let ratings = element["ratings"] as! Double
                let name = element["name"] as! String
                let type = element["types"] as! String
                if(type == "draft"){
                    let draftInstance: DraftBeer = DraftBeer(officeTime: [("월~목",1500,2400),("금,토",1700,0100),("일",0000,0000)],draftPriceList:["IPA":7000,"Duh":8000,"Whaeva":7500],bottledDPriceList:["버드와이저":3500,"Cass":3300,"Hite":4000], OfficeNumber : phoneNumber, name:name,type:"Draft", location:(latitude,longitude))
                    draftInstance.ratings = ratings
                    draftInstance.address = address
                    draftInstance.placeID = placeID
                    draftArray0.append(draftInstance)
                }
                else if(type == "brewery"){
                    let breweryInstance: Brewery = Brewery(name:name, type:"Brewery",location:(latitude,longitude), officeNumber:phoneNumber, officeTime:[("Mon",1200,1800)],brewedPricelist: ["브루":7000,"어리":8000],bottledBPricelist:["카스":400,"OB":7000,"하이트":5000])
                    breweryInstance.ratings = ratings
                    breweryInstance.address = address
                    breweryInstance.placeID = placeID
                    breweryArray0.append(breweryInstance)}
                else if(type == "factory"){
                    let factoryInstance: Factory = Factory(name:name, type:"Factory", location:(latitude,longitude), officeTime: [("월~금",0900,1700),("토~일",0000,0000)], programList:["맥주만들기"], officeNumber:phoneNumber, officeURL:website)
                    factoryInstance.ratings = ratings
                    factoryInstance.address = address
                    factoryInstance.placeID = placeID
                    factoryArray0.append(factoryInstance)}
                }
            
            }
        } catch let error as NSError {
            print("Error:\n \(error)")
    }
}







