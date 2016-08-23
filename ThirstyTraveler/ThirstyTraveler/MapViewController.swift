import UIKit
import GoogleMaps
import GoogleMapsCore

class MapViewController: UIViewController, GMSMapViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,
                                                          longitude: 151.20, zoom: 15)
        let thismapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        thismapView.myLocationEnabled = true
        thismapView.delegate = self
        self.view = thismapView
        
        let position = CLLocationCoordinate2DMake(-33.86, 151.20)
        let marker = GMSMarker(position: position)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        let markerIcon = UIImage(named: "draft")
        let markerSize = CGSize(width: 8, height: 8)
        marker.icon = scaleImage(markerIcon!, toSize: markerSize)
        marker.map = thismapView
        
        
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
    
    
}

