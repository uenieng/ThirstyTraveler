//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class DraftBeer{
    let name:String
    var priceList:[String:Int] = [:]
    var time:(h:Int,m:Int)
    var openHours:(open:time,close:time)
    
    
    init(name:String){
        self.name = name
        self.priceList = [:]
        self.time = (0,0)
        
    }
}