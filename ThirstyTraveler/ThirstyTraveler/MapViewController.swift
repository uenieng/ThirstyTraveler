import UIKit
import GoogleMaps
import GoogleMapsCore


class MapViewController: UIViewController, GMSMapViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(37.539051,
                                                          longitude: 126.988116, zoom: 10)
        let thismapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        thismapView.myLocationEnabled = true
        thismapView.delegate = self
        self.view = thismapView
        
        var draftIcon = UIImage(named: "beer_1_fill")
        var breweryIcon = UIImage(named: "beer_2_fill2")
        var factoryIcon = UIImage(named: "beer_3_fill")
        let markerSize = CGSize(width: 8, height: 8)
        draftIcon = scaleImage(draftIcon!, toSize: markerSize)
        breweryIcon = scaleImage(breweryIcon!, toSize: markerSize)
        factoryIcon = scaleImage(factoryIcon!, toSize: markerSize)
        
        for draft in draftArray0{
            print(draft.location)
        }
        
        createMarker(thismapView, DraftList: draftArray0, icon: draftIcon!)
        createMarker(thismapView, BreweryList: breweryArray0, icon: breweryIcon!)
        createMarker(thismapView, FactoryList: factoryArray0, icon: factoryIcon!)
        
//        let position = CLLocationCoordinate2DMake(37.539051, 126.988116)
//        let marker = GMSMarker(position: position)
//        marker.title = "Sydney"
//        marker.snippet = "Australia"
//        var markerIcon = UIImage(named: "beer_1_fill")
//        marker.icon = scaleImage(markerIcon!, toSize: markerSize)
//        marker.map = thismapView
        
        createImageButton()
        
        
        //let wonyeongURL = NSURL(string : "https://github.com/ProjectInTheClass/TakeCareOfMyDetail/blob/master/Wonyeong2Detail/Json/ThirstyTravelrer.json")
        
        //let wonyeongURL = NSBundle.mainBundle().URLForResource("data", withExtension: "json")
        
//        let wonyeongURL: NSURL
//        
//        if let URL = NSURL(fileURLWithPath: "data.json"){
//            wonyeongURL = URL
//        }
//        print(wonyeongURL)
//        let data = NSData(contentsOfURL: wonyeongURL)
        

        
        
        
//        let data = NSData(contentsOfFile: path)
//        print(data)
//        do {
//            let object = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
//            print(object)
//            if let dictionary = object as? [AnyObject] {
//                //readJSONObject(dictionary)
//                print("start read")
//            }
//        } catch {
//            print("error")
//            // Handle Error
//        }


        
    }
    func scaleImage(image: UIImage, toSize newSize: CGSize) -> (UIImage) {
        let newRect = CGRectIntegral(CGRectMake(0,0, newSize.width, newSize.height))
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetInterpolationQuality(context, .High)
        let flipVertical = CGAffineTransformMake(1, 0, 0, -1, 0, newSize.height)
        CGContextConcatCTM(context, flipVertical)
        CGContextDrawImage(context, newRect, image.CGImage)
        let newImage = UIImage(CGImage: CGBitmapContextCreateImage(context)!)
        UIGraphicsEndImageContext()
        return newImage
    }
    
    func mapView(mapView: GMSMapView!, didTapMarker marker: GMSMarker!) -> Bool {
        
        //        let loginPageView =  self.storyboard?.instantiateViewControllerWithIdentifier("PopUpID") as! PopUpViewController
        //        self.presentViewController(loginPageView, animated: true, completion: nil)
        
        //        let popOverVC = UIStroyboard(
        abc()
        return true
    }
    func abc(){
        let popOverVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewControllerWithIdentifier("PopUpID") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
    }
    
    
    func createImageButton () {
        let button = UIButton();
        button.setImage(UIImage(named: "beer_1_black"), forState: .Normal)
        button.frame = CGRectMake(20, 50, 43, 43) // X, Y, width, height
        button.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        //button.backgroundColor = UIColor(red: (31/255.0), green: (146/255.0), blue: (160/255.0), alpha: 1.0)
        
        button.layer.cornerRadius = 0
        button.layer.masksToBounds = true
        
        self.view.addSubview(button)
    }
    
    
}

