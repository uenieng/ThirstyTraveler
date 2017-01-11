import UIKit
import GoogleMaps
import GoogleMapsCore
import GooglePlaces

/*
 *
 */
let Slider = SliderController()


class MapViewController: UIViewController, GMSMapViewDelegate {
    var sliderValue: Double = 0
    var masterMakrer: [AnyObject] = []
    var index: Double = 0.000001
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.cameraWithLatitude(37.539051,longitude: 126.988116+index, zoom: 10)
        index += 0.00001
        let thismapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        
        thismapView.myLocationEnabled = true
        thismapView.delegate = self
        thismapView.clear()
        self.view = nil
        self.view = thismapView
        
        var draftIcon = UIImage(named: "beer_1_fill")
        var breweryIcon = UIImage(named: "beer_2_fill2")
        var factoryIcon = UIImage(named: "beer_3_fill")
        let markerSize = CGSize(width: 12, height: 12)
        draftIcon = scaleImage(draftIcon!, toSize: markerSize)
        breweryIcon = scaleImage(breweryIcon!, toSize: markerSize)
        factoryIcon = scaleImage(factoryIcon!, toSize: markerSize)
        sliderValue = currentValue
        
//        createMarker(thismapView, DraftList: draftArray0, icon: draftIcon!, sliderValue: sliderValue)
//        createMarker(thismapView, BreweryList: breweryArray0, icon: breweryIcon!, sliderValue: sliderValue)
//        createMarker(thismapView, FactoryList: factoryArray0, icon: factoryIcon!, sliderValue: sliderValue)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        //super.viewDidLoad()
//        let camera = GMSCameraPosition.cameraWithLatitude(37.539051,longitude: 126.988116+index, zoom: 10)
//        index += 0.00001
//        let thismapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
//        
//        thismapView.myLocationEnabled = true
//        thismapView.delegate = self
//        thismapView.clear()
//        self.view = thismapView
        let thismapView = self.view as! GMSMapView
        var draftIcon = UIImage(named: "beer_1_fill")
        var breweryIcon = UIImage(named: "beer_2_fill2")
        var factoryIcon = UIImage(named: "beer_3_fill")
        let markerSize = CGSize(width: 12, height: 12)
        draftIcon = scaleImage(draftIcon!, toSize: markerSize)
        breweryIcon = scaleImage(breweryIcon!, toSize: markerSize)
        factoryIcon = scaleImage(factoryIcon!, toSize: markerSize)
        
        createMarker(thismapView, DraftList: draftArray0, icon: draftIcon!)
        createMarker(thismapView, BreweryList: breweryArray0, icon: breweryIcon!)
        createMarker(thismapView, FactoryList: factoryArray0, icon: factoryIcon!)
    }
    override func viewDidDisappear(animated: Bool) {
        let thismapView = self.view as! GMSMapView
        thismapView.clear()
        
    }
    func makeView(thismapView: GMSMapView){
        var draftIcon = UIImage(named: "beer_1_fill")
        var breweryIcon = UIImage(named: "beer_2_fill2")
        var factoryIcon = UIImage(named: "beer_3_fill")
        let markerSize = CGSize(width: 12, height: 12)
        draftIcon = scaleImage(draftIcon!, toSize: markerSize)
        breweryIcon = scaleImage(breweryIcon!, toSize: markerSize)
        factoryIcon = scaleImage(factoryIcon!, toSize: markerSize)
        
        
        createMarker(thismapView, DraftList: draftArray0, icon: draftIcon!)
        createMarker(thismapView, BreweryList: breweryArray0, icon: breweryIcon!)
        createMarker(thismapView, FactoryList: factoryArray0, icon: factoryIcon!)
    }
    
    func scaleImage(image: UIImage, toSize newSize: CGSize) -> (UIImage) {
        let newRect = CGRectIntegral(CGRectMake(0,0, newSize.width, newSize.height))
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetInterpolationQuality(context!, .High)
        let flipVertical = CGAffineTransformMake(1, 0, 0, -1, 0, newSize.height)
        CGContextConcatCTM(context!, flipVertical)
        CGContextDrawImage(context!, newRect, image.CGImage!)
        let newImage = UIImage(CGImage: CGBitmapContextCreateImage(context!)!)
        UIGraphicsEndImageContext()
        return newImage
    }
    
    func mapView(mapView: GMSMapView!, didTapMarker marker: GMSMarker!) -> Bool {
        
        let position:CLLocationCoordinate2D = marker.position
        let PlaceIdOfMark = getIdByCoordinate(position)
        popUp(PlaceIdOfMark)
        
        return true
    }
    
    func popUp(PlaceIdOfMark: String){
        let popOverVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewControllerWithIdentifier("PopUpID") as! PopUpViewController
        
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        
        loadFirstPhotoForPlace(PlaceIdOfMark, imageView: popOverVC.PopUpImage)
        popOverVC.PopUpTitle.text = getNameById(PlaceIdOfMark)
        print("result : \(popOverVC.PopUpTitle.text)")
    }
    
    
    
    func loadFirstPhotoForPlace(placeID: String, imageView: UIImageView) {
        GMSPlacesClient.sharedClient().lookUpPhotosForPlaceID(placeID) { (photos, error) -> Void in
            if let error = error {
                // TODO: handle the error.
                print("Error: \(error.description)")
            } else {
                if let firstPhoto = photos?.results.first {
                    self.loadImageForMetadata(firstPhoto, imageView: imageView)
                }
                else{
                    imageView.image = UIImage(named: "defaultImage")
                }
            }
        }
    }
    
    func loadImageForMetadata(photoMetadata: GMSPlacePhotoMetadata, imageView: UIImageView) {
        GMSPlacesClient.sharedClient().loadPlacePhoto(photoMetadata, constrainedToSize: imageView.bounds.size,scale: imageView.window!.screen.scale) { (photo, error) -> Void in
            if let error = error {
                // TODO: handle the error.
                print("Error: \(error.description)")
            } else {
                imageView.image = photo;
                //self.attributionTextView.attributedText = photoMetadata.attributions;
            }
        }
    }
    
    
    func createImageButton () {
        let button = UIButton();
        let button1 = UIButton();
        let button2 = UIButton();
        let button3 = UIButton();
        button.setImage(UIImage(named: "beer_1_black"), forState: .Normal)
        button.frame = CGRectMake(20, 50, 43, 43)
        button.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        
        button.layer.cornerRadius = 0
        button.layer.masksToBounds = true
        
        button1.setImage(UIImage(named: "beer_2_black"), forState: .Normal)
        button1.frame = CGRectMake(20, 100, 43, 43)
        button1.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        
        button1.layer.cornerRadius = 0
        button1.layer.masksToBounds = true
        
        button2.setImage(UIImage(named: "beer_3_black"), forState: .Normal)
        button2.frame = CGRectMake(20, 150, 43, 43)
        button2.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        
        button2.layer.cornerRadius = 0
        button2.layer.masksToBounds = true
        
        button3.setImage(UIImage(named: "beer_favorites"), forState: .Normal)
        button3.frame = CGRectMake(20, 200, 43, 43)
        button3.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        
        button3.layer.cornerRadius = 0
        button3.layer.masksToBounds = true
        
        self.view.addSubview(button)
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
    }
    
    
    func getIdByCoordinate(location: CLLocationCoordinate2D)-> String{
        var result:String = ""
        var thisLatitude = location.latitude
        var thisLonitude = location.longitude
        thisLatitude = round(location.latitude*1000000)/1000000
        thisLonitude = round(location.longitude*1000000)/1000000
        for draft in draftArray0{
            if(location.latitude == draft.location.0 && location.longitude == draft.location.1){
                result = draft.placeID
                return result
            }
        }
        for brewery in breweryArray0{
            if(location.latitude == brewery.location.0 && location.longitude == brewery.location.1){
                result = brewery.placeID
                return result
            }
        }
        for factory in draftArray0{
            if(location.latitude == factory.location.0 && location.longitude == factory.location.1){
                result = factory.placeID
                return result
            }
        }
        return result
    }
    func getNameById(placeId: String) -> String{
        for draft in draftArray0{
            if(placeId == draft.placeID){
                return draft.name}
        }
        for brewery in breweryArray0{
            if(placeId == brewery.placeID){
                return brewery.name}
        }
        for factory in factoryArray0{
            if(placeId == factory.placeID){
                return factory.name}
        }
        return "no name"
    }
}


