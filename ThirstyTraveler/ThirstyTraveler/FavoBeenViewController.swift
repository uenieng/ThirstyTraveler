//
//  FavoBeenViewController.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 19..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit



class FavoBeenViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var FavoBeen: UISegmentedControl!
    @IBOutlet var FavoEmbed: UIView!
    
    var beerplaces:Array<[BeerPlace]> = []
    var wishlist:Array<BeerPlace> = []
    var haveBeen:Array<BeerPlace> = []
    var itemsOnSegView:Array<BeerPlace> = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerplaces.append(factoryArray0)
        beerplaces.append(breweryArray0)
        beerplaces.append(draftArray0)
        
        for items in beerplaces{
                 wishlist = items.filter ({(i:BeerPlace) -> (Bool) in
                if i.wishlist == true {return true}
                return false})
                haveBeen = items.filter ({(i:BeerPlace) -> (Bool) in
                if i.haveBeen == true {return true}
                return false})
            
            itemsOnSegView = wishlist
        }

       //itemsOnSegview가 nil일때 빈 테이블뷰를 호출하는 코드 작성
        //빈 테이블뷰를 어떻게 불러오지?
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 0
        
        
        switch(FavoBeen.selectedSegmentIndex){
        case 0:
            returnValue = wishlist.count
            break
        case 1:
            returnValue = haveBeen.count
            break
        
        default : 0
        break
        }
        
        return returnValue
        
        
        
    }
    

    
    @IBAction func FavoBeenEmbed(sender: UISegmentedControl){
                switch(FavoBeen.selectedSegmentIndex)
        {
        case 0:
            itemsOnSegView = wishlist
            break
        case 1:
            itemsOnSegView = haveBeen
            break
            
        default:
            break
            
        }
                return
    }

     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        
    {
        let favobeenCell = tableView.dequeueReusableCellWithIdentifier("favobeenCell", forIndexPath: indexPath) as! favobeenTableViewCell
        
        
        // 지금까지 제대로 실행되었다면 itemsOnSegView에 beerplace타입의 객체들이 인스턴스화 되어있을것.
        // 그러면 불러와야할 것은
        // 가게 이름, 주소, 이미지, 평점, 타입 이정도인데
        let placeNames:Array<String> = Array(arrayLiteral: itemsOnSegView[indexPath.row].name) //
        let placeName:String = placeNames[indexPath.section]
        let placeAddress:String = String(itemsOnSegView[indexPath.row].address) // 나중에 parentclass에 address 넣으면 .address로 변경하면 됨.

        favobeenCell.beerplaceName.text = placeName
        favobeenCell.beerplaceAddress.text = placeAddress
        
        
        return favobeenCell
    }


}


