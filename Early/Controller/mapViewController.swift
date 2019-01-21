//mapViewController.swift
//Created by annotations on 1/20/19.
//Copyright © 2019 Mikael. All rights reserved.
//import UIKit
import MapKit
class mapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 60.1699, longitude: 24.9384)
        ZoomMapOn(location : initialLocation)
        let earSpecialistVenues = venus(title: "Helsinki Ear Institute", locationName: "Halsuantie 1, 00420 Helsinki", coordinate: CLLocationCoordinate2D(latitude: 60.237630, longitude: 24.885220))
        mapView.addAnnotation(earSpecialistVenues)
    }
    private let regionRadius : CLLocationDistance = 5000
    func ZoomMapOn(location : CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}
