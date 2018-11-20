//
//  CoreLocationManager.swift
//  Strava1.0
//
//  Created by Owen Henley on 11/19/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation
import CoreLocation

protocol CoreLocationManagerDelegate: class {
    func locationManager(_ locationManager: CLLocationManager, didUpdate toLocation: CLLocation, fromLocation: CLLocation)
}

class CoreLocationManager {
    
    static let shared = CoreLocationManager()
    weak var locationManagerDelegate: CLLocationManagerDelegate?
    let locationManager = CLLocationManager()
    let currentLocation = 
    let startingLocation =
}
