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
        networkController.makeLocationQueryTo(url: "https://api.justpark.com/apiv3/search/region", withParameters: (lat: "51.5560241", lng: "­0.2817075", dist: "100"))    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

