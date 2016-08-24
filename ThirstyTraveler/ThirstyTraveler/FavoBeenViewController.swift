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
    
    var beerplaces:Array<BeerPlace> = []
    var wishList:Array<BeerPlace> = []
    var haveBeen:Array<BeerPlace> = []
    var itemsOnSegView:Array<BeerPlace>?
    var temporary:Array<BeerPlace>=[]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerplaces.removeAll()
        beerplaces += (factoryArray0 as [BeerPlace])
        beerplaces += (breweryArray0 as [BeerPlace])
        beerplaces += (draftArray0 as [BeerPlace])
        
        func addTempo (i:Bool, a:BeerPlace) -> (){
            if i == true {
                temporary.append(a)
            } else {}
        } // 인스턴스의 불값을 확인

        
        for items in beerplaces{
            addTempo(items.wishlist, a: items) //wishlist들 검증하여 어레이에 저장
        } //반복문 종료
        wishList = temporary
        
        temporary.removeAll()
        for items in beerplaces{
            addTempo(items.haveBeen, a: items) //방문기록 검증하여 어레이에 저장
        } //반복문 종료
        haveBeen = temporary

//            itemsOnSegView = wishList

        }
    
    
       //itemsOnSegview가 nil일때 빈 테이블뷰를 호출하는 코드 작성
        //빈 테이블뷰를 어떻게 불러오지?
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 0
        
        
        switch(FavoBeen.selectedSegmentIndex){
        case 0:
            returnValue = wishList.count
            break
        case 1:
            returnValue = haveBeen.count
            print(returnValue)
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
//            itemsOnSegView!.removeAll()
            itemsOnSegView = wishList
            break
        case 1:
//            itemsOnSegView!.removeAll()
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
        
        if itemsOnSegView != nil {
            
            let placeNames:Array<String> = Array(arrayLiteral: itemsOnSegView![indexPath.row].name) //
            print (placeNames)
            let placeName:String = placeNames[indexPath.section]
            let placeAddress:String = String(itemsOnSegView![indexPath.row].address)
            
            favobeenCell.beerplaceName.text = placeName
            favobeenCell.beerplaceAddress.text = placeAddress
        } else {
            favobeenCell.beerplaceName.text = "안녕하세요!"
            favobeenCell.beerplaceAddress.text = "좀더 둘러볼까요?"
        }
        
        
        return favobeenCell
    }


}


