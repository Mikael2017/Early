//
//  mapViewController.swift
//  Early
//
//  Created by annotations on 1/20/19.
//  Copyright © 2019 Prom. All rights reserved.
//

import UIKit
import MapKit


class mapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let intialLocation = CLLocation(latitude: 60.1699, longitude: 24.9384)
        ZoomMapOn(location : intialLocation)
    }
    private let regionRadius : CLLocationDistance = 2000
    func ZoomMapOn(location : CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}
