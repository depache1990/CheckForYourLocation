//
//  MapViewController.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 11/8/21.
//

import MapKit
import UIKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet var mapView: MKMapView!
 
    var myIpGeo: IpGeo?

    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: myIpGeo?.latitude ?? 0, longitude: myIpGeo?.longitude ?? 0)
       
//    }
//    private let regionRadius: CLLocationDistance = 1000
//    func zooMapOn(location: CLLocation){
//        let coordinateRegion = MKCoordinateRegionMa
  }
//
    

    

}
