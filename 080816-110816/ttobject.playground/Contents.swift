//: Playground - noun: a place where people can play

import UIKit
/*
struct  Item {
    let bpID:Int?=nil
    let bpType:String?=nil
}
*/



class Item{
    var name: String = ""
    var type: String = ""
    var ratings : Double? = nil
    var location : String = ""
}



class Mylist {
    var info = Item()
    var wishlist:Bool?
    var visited: Bool?
    
}



class Brewery {
    let BID:Int? = nil
    var info = Item()
    var pricelist=[String:Int]()
}












/* func createDummy(){
    let chapter1 = Chapter(name: "오버뷰")
    let session1_1 = Session(name: "쉬어가는 세션")
    chapter1.session += [session1_1]
} */
struct timeSet {
    var openHour:Int = 0
    var openMinute:Int = 0
    var closeHour:Int = 0
    var closeMinute:Int = 0
}

class items {
    let name = "Cass"
    let typeOfTour = Factory()
    var ratings:[Double]?=nil;
    var locations = (110.33,140.12)
}


class Factory {
    //let bfID:Int?=nil
    var tourTime = timeSet(openHour:11,openMinute:00,closeHour:18,closeMinute:30)
    var booking:String?=nil;
    var descriptions:String?=nil;
    
    
}


var newTimeSet = timeSet()
newTimeSet.openHour=18

print("\(newTimeSet)")



