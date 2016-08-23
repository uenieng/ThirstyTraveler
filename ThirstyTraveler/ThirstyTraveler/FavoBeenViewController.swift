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
    
    var beerTableVC:FavobeenTableViewController?
    var beerplaces:Array<BeerPlace> = []
    
    var wishlist:Array<BeerPlace> = []
    var haveBeen:Array<BeerPlace> = []
  //  let favobeen:[String:[BeerPlace]] = ["즐겨찾기":wishlist,"방문기록":haveBeen]

 
    override func viewDidLoad() {
        super.viewDidLoad()
        

     print(itemsOnSegView)
        
        for items in breweryArray0 {
            
            if items.wishlist == true {
                wishlist += [items]
                
            }
            if items.haveBeen == true {
                    haveBeen += [items]
            }
            
        }
        for items in factoryArray0 {
            if items.wishlist == true{
                wishlist += [items]
            }
            if items.haveBeen == true {
                haveBeen += [items]
            }
        }
        
        for items in draftArray0 {
            if items.wishlist == true{
                wishlist += [items]
            }
            if items.haveBeen == true {
                haveBeen += [items]
            }
            
            itemsOnSegView += wishlist

        }

       //itemsOnSegview가 nil일때 빈 테이블뷰를 호출하는 코드 작성
        //빈 테이블뷰를 어떻게 불러오지?
        
        // Do any additional setup after loading the view.
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
        
        default :
        break
        }
        
        return returnValue
        
        
        
    }
    //Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls) 
    
    
   
    
    
    var itemsOnSegView:Array<BeerPlace> = []

    
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
        
        
        //여기에 returnValue array 값 childViewControllers로 보내는 매쏘드 작성 해야함
        
    }

     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        
    {
        let favobeenCell = tableView.dequeueReusableCellWithIdentifier("favobeenCell", forIndexPath: indexPath) as! favobeenTableViewCell
        
        
        // 지금까지 제대로 실행되었다면 itemsOnSegView에 beerplace타입의 객체들이 인스턴스화 되어있을것.
        // 그러면 불러와야할 것은
        // 가게 이름, 주소, 이미지, 평점, 타입 이정도인데
        let placeNames:Array<String> = Array(arrayLiteral: itemsOnSegView[indexPath.row].name)
        let placeName:String = placeNames[indexPath.section]
        let placeAddress:String = String(itemsOnSegView[indexPath.row].name)
        
    
        return favobeenCell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


