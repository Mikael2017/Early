//mapViewController.swift
//Created by annotations on 1/20/19.
//Copyright © 2019 Mikael. All rights reserved.
import UIKit
import MapKit
class mapViewController: UIViewController
{
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 60.1699, longitude: 24.9384)
        ZoomMapOn(location : initialLocation)
        let earSpecialistVenues = venus(title: "Helsinki Ear Institute", locationName: "Halsuantie 1, 00420 Helsinki", coordinate: CLLocationCoordinate2D(latitude: 60.237630, longitude: 24.885220))
        mapView.addAnnotation(earSpecialistVenues)
        mapView.delegate = self
    }
    private let regionRadius : CLLocationDistance = 6000
    func ZoomMapOn(location : CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}


extension mapViewController : MKMapViewDelegate
{
    func mapView(_ mapView : MKMapView, viewfor annotation : MKAnnotation) -> MKAnnotationView?
    
    {
    if let annotation = annotation as? venus
          {
    let identifier = "pin"
    var view : MKPinAnnotationView
    if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier : identifier) as? MKPinAnnotationView
              {
    dequeuedView.annotation = annotation
    view = dequeuedView
              }
    else        {
    view = MKPinAnnotationView(annotation : annotation, reuseIdentifier : identifier)
    view.canShowCallout = true
    view.calloutOffset = CGPoint (x : -5 , y : 5)
    view.rightCalloutAccessoryView = UIButton(type : .detailDisclosure) as UIView
    
                }
       return view
    
          }
      return nil
    }
        
}

