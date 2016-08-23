//
//  CreatingMark.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 24..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation
import GoogleMaps
import GoogleMapsCore


func createMarker(mapview: GMSMapView, FactoryList: [Factory], icon: UIImage){
    for factory in FactoryList{
        let position = CLLocationCoordinate2DMake(factory.location.0, factory.location.1)
        let marker = GMSMarker(position: position)
        marker.title = factory.name
        marker.snippet = factory.address
        marker.icon = icon
        marker.map = mapview
    }
}

func createMarker(mapview: GMSMapView, BreweryList: [Brewery],  icon: UIImage){
    for brewery in BreweryList{
        let position = CLLocationCoordinate2DMake(brewery.location.0, brewery.location.1)
        let marker = GMSMarker(position: position)
        marker.title = brewery.name
        marker.snippet = brewery.address
        marker.icon = icon
        marker.map = mapview
    }
}

func createMarker(mapview: GMSMapView, DraftList: [DraftBeer],  icon: UIImage){
    for draft in DraftList{
        let position = CLLocationCoordinate2DMake(draft.location.0, draft.location.1)
        let marker = GMSMarker(position: position)
        marker.title = draft.name
        marker.snippet = draft.address
        marker.icon = icon
        marker.map = mapview
    }
}

    