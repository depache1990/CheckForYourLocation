//
//  ViewController.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//

import UIKit

class ViewController: UIViewController {
    var ipGeo: IpGeo?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ipGeoVC = segue.destination as? IpGeoViewController else { return }
        ipGeoVC.myIpGeo = ipGeo
    }
    
    
    
    
}
