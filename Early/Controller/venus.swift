//
//  venus.swift
//  Early
//Created by annotations on 1/20/19.
//  Copyright © 2019 Prom. All rights reserved.
import MapKit
import AddressBook
import SwiftyJSON

class venus: NSObject, MKAnnotation
{
    let title : String?
    let locationName: String?
    let coordinate: CLLocationCoordinate2D
    init(title : String, locationName : String?, coordinate:CLLocationCoordinate2D)
    {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        super.init()
    }
    var subtitle: String?  {
        return locationName
        
    }
    
}
  


