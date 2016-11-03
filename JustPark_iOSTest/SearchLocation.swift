//
//  SearchLocation.swift
//  JustPark_iOSTest
//
//  Created by Daniel Robertson on 03/11/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit
import MapKit

class SearchLocation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
