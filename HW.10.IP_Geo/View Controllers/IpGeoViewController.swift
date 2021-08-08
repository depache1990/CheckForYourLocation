//
//  IpGeoViewController.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//

import UIKit

class IpGeoViewController: UIViewController {
    
    @IBOutlet var ipLabel: UILabel!
    @IBOutlet var countryCodeLabel: UILabel!
    @IBOutlet var countryNameLabel: UILabel!
    @IBOutlet var regionCodeLabel: UILabel!
    @IBOutlet var regionNameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var zipCodeLabel: UILabel!
    @IBOutlet var timeZoneLabel: UILabel!
    
     var myIpGeo: IpGeo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ipLabel.text = "My Ip address: \(myIpGeo?.ip ?? "")"
        countryCodeLabel.text = "My country Code: \(myIpGeo?.country_code ?? "")"
        countryNameLabel.text = "My country Name: \(myIpGeo?.country_name ?? "")"
        regionCodeLabel.text = "My country Code: \(myIpGeo?.region_code ?? "")"
        regionNameLabel.text = "My region Name: \(myIpGeo?.region_name ?? "")"
        cityLabel.text = "My City: \(myIpGeo?.city ?? "")"
        zipCodeLabel.text = "My zip code: \(myIpGeo?.zip_code ?? "")"
        timeZoneLabel.text = "My time zone: \(myIpGeo?.time_zone ?? "")"
    }
}
// MARK: - Networking
extension IpGeoViewController {
    
    func fetchIpGeo() {
        
        guard  let url = URL(string: "https://freegeoip.app/json/") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print (error?.localizedDescription ?? "no error description")
                return
            }
            
            do {
                self.myIpGeo = try JSONDecoder().decode(IpGeo.self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}

