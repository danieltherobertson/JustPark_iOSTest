//
//  ViewController.swift
//  JustPark_iOSTest
//
//  Created by Daniel Robertson on 02/11/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let networkController = NetworkController()
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 51.5560241, longitude: -0.2817075)
        let regionRadius: CLLocationDistance = 100
        let initialLocationPin = SearchLocation(coordinate: initialLocation.coordinate)
        
        func centerMapOn(location: CLLocation) {
            let regionCoords = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius*12, regionRadius*12)
            mapView.setRegion(regionCoords, animated: true)
        }
        mapView.addAnnotation(initialLocationPin)
        centerMapOn(location: initialLocation)
        
        
      //  networkController.makeLocationQueryTo(url: "https://api.justpark.com/apiv3/search/region", withParameters: (lat: "51.5560241", lng: "-­0.2817075", dist: "100"))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

