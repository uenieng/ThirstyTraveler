//
//  CreatingMark.swift
//  ThirstyTraveler
//
//  Created by nariyoon on 2016. 8. 24..
//  Copyright © 2016년 moonyoung. All rights reserved.


import Foundation
import GoogleMaps
import GoogleMapsCore



func createMarker(mapview: GMSMapView, FactoryList: [Factory], icon: UIImage, sliderValue: Double){
    let MapView = MapViewController()
    for factory in FactoryList{
        if(factoryValue <= round(factory.ratings*10)/10){
            print("factoryValue : \(sliderValue), factory : \(factory.ratings)")
            let position = CLLocationCoordinate2DMake(factory.location.0, factory.location.1)
            let marker = GMSMarker(position: position)
            marker.title = factory.name
            marker.snippet = factory.address
            marker.icon = icon
            marker.map = mapview
            MapView.masterMakrer.append(marker)
        }
    }
}

func createMarker(mapview: GMSMapView, BreweryList: [Brewery],  icon: UIImage, sliderValue: Double){
    let MapView = MapViewController()
    for brewery in BreweryList{
        if(breweryValue <= round(brewery.ratings*10)/10){
            let position = CLLocationCoordinate2DMake(brewery.location.0, brewery.location.1)
            let marker = GMSMarker(position: position)
            marker.title = brewery.name
            marker.snippet = brewery.address
            marker.icon = icon
            marker.map = mapview
            MapView.masterMakrer.append(marker)
        }
    }
}

func createMarker(mapview: GMSMapView, DraftList: [DraftBeer],  icon: UIImage, sliderValue: Double){
    let MapView = MapViewController()
    for draft in DraftList{
        if(draftValue <= round(draft.ratings*10)/10){
            let position = CLLocationCoordinate2DMake(draft.location.0, draft.location.1)
            let marker = GMSMarker(position: position)
            marker.title = draft.name
            marker.snippet = draft.address
            marker.icon = icon
            marker.map = mapview
            MapView.masterMakrer.append(marker)
        }
    }
}

    