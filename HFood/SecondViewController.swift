//
//  SecondViewController.swift
//  HFood
//
//  Created by Bruno Marra de Melo on 07/12/19.
//  Copyright © 2019 Bruno Marra de Melo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        map.showsUserLocation = true
        map.setUserTrackingMode(.follow, animated: true)

    }


}

