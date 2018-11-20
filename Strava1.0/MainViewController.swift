//
//  MainViewController.swift
//  Strava1.0
//
//  Created by Owen Henley on 11/19/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MainViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var distanceTravelledLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    
    var recordTapped = false
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        distanceTravelledLabel.layer.cornerRadius = 5
        recordButton.layer.cornerRadius = 5
    }
    
    @IBAction func recordButtonTapped(_ sender: Any) {
        
        
    }
    
    func locationManager(_ locationManager: CLLocationManager, didUpdate toLocation: CLLocation, fromLocation: CLLocation) {
        
    }
    
    func getLocation() {
        let locationStatus  = CLLocationManager.authorizationStatus()
        
        if locationStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            return
        }
        
        if locationStatus == .denied || locationStatus == .restricted {
            let alert = UIAlertController(title: "Location Services Disabled", message: "Please enable Location Services in Settings", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
            return
        }
        
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    }
    }
