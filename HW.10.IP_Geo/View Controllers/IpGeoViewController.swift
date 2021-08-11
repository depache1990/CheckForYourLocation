//
//  IpGeoViewController.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//

import UIKit
import Alamofire


class IpGeoViewController: UIViewController {
    
    @IBOutlet var ipLabel: UILabel!

     var myIpGeo: IpGeo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchIpGeo()
      
        
        ipLabel.text = myIpGeo?.description ?? ""
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

                DispatchQueue.main.async {
                    self.ipLabel.text = self.myIpGeo?.description ?? ""
                    //
                }
            } catch let error {
                print(error.localizedDescription)
            }

        }.resume()
    }



}

