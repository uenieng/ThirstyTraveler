//
//  FavoBeenViewController.swift
//  ThirstyTraveler
//
//  Created by 양문영 on 2016. 8. 19..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit


class FavoBeenViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    var mapview = MapViewController()
    
    
    
    @IBOutlet var FavoBeen: UISegmentedControl!
    @IBOutlet var FavoEmbed: UITableView!
    
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
        } // 인스턴스의 불값을 확인하는 함수

        
        for items in beerplaces{
            addTempo(items.wishlist, a: items) //wishlist들 검증하여 어레이에 저장
        }
        wishList = temporary
        
        temporary.removeAll()
        for items in beerplaces{
            addTempo(items.haveBeen, a: items) //방문기록 검증하여 어레이에 저장
        }
        haveBeen = temporary

            itemsOnSegView = wishList

        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 1
        var verify:BeerPlace?
        verify = wishList[0]
        
        if (verify == nil) {
            
        returnValue = 1
            
        }
        else {
            
        switch(FavoBeen.selectedSegmentIndex){
        case 0:
            returnValue = wishList.count
            break
        case 1:
            returnValue = haveBeen.count

            break
        
        default : 1
        
        break
        }
        }
        return returnValue
    }
    

    
    @IBAction func FavoBeenEmbed(sender: UISegmentedControl){
                switch(FavoBeen.selectedSegmentIndex)
        {
        case 0:
            itemsOnSegView!.removeAll()
            itemsOnSegView = wishList
            
            break
        case 1:
            itemsOnSegView!.removeAll()
            itemsOnSegView = haveBeen
            break
            
        default:
            break
            
        }
        
        self.FavoEmbed.reloadData()

                return
    }

     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        
    {
        let favobeenCell = tableView.dequeueReusableCellWithIdentifier("favobeenCell", forIndexPath: indexPath) as! favobeenTableViewCell
        if itemsOnSegView != nil {
        
            let placeNames:Array<String> = Array(arrayLiteral: itemsOnSegView![indexPath.row].name) //
            print (placeNames)
            let placeName:String = placeNames[indexPath.section]
            let placeAddress:String = String(itemsOnSegView![indexPath.row].address)
            let placeRatings:String? = String(itemsOnSegView![indexPath.row].ratings)
            favobeenCell.beerplaceName.text = placeName
            favobeenCell.beerplaceAddress.text = placeAddress
            
            if placeRatings != nil {
            favobeenCell.beerplaceRatings.text = placeRatings
            } else {
                favobeenCell.beerplaceRatings.text = "5.0"
            }
//            let placeImage = UIImage(named:"defaultImage")
//            let placeImageView:UIImageView = UIImageView(image:placeImage)
//            
//            
//            mapview.loadFirstPhotoForPlace(itemsOnSegView![indexPath.row].placeID, imageView: placeImageView)
//            
//            favobeenCell.beerplaceImage.image = placeImageView.image
            
        } else if itemsOnSegView == nil {
            favobeenCell.beerplaceName.text = "안녕하세요!"
            favobeenCell.beerplaceAddress.text = "좀더 둘러볼까요?"
        }
        
        
        
        return favobeenCell
    }


}


