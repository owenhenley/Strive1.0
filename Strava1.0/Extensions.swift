//
//  Extensions.swift
//  Strava1.0
//
//  Created by Owen Henley on 11/19/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

extension CLLocation {
    func distanceFromLocation(_ location:CLLocation) -> Double {
        let longitude = CoreLocationManager
        let location = CLLocationCoordinate2D(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>)
        
    }
}

extension CLLocationManagerDelegate {
    func locationManager(_ locationManager: CLLocationManager, didUpdate toLocation: CLLocation, fromLocation: CLLocation){
        
    }
}

extension MKMapView {
    func addLocation(_ location:CLLocation) {
        
    }
}
