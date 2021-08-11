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
       // fetchIpGeo()
        alomafireGetButton()
        
        
        ipLabel.text = myIpGeo?.description ?? ""
    }
   
    
    
    func alomafireGetButton(){
        AF.request(URLS.myIpAddress.rawValue, method: .get)
            .responseJSON { dataResponse in
                guard let statusCode = dataResponse.response?.statusCode else { return }
                print("statusCode", statusCode)
                
                if (200..<300).contains(statusCode) {
                    guard let value = dataResponse.value else { return }
                    print("value", value)
                } else {
                    guard let error = dataResponse.error else { return }
                    print(error)
                }
                
                
            }
    }
    
    
}
// MARK: - Networking
extension IpGeoViewController {

//    func fetchIpGeo() {
//
//        guard  let url = URL(string: "https://freegeoip.app/json/") else {
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data else {
//                print (error?.localizedDescription ?? "no error description")
//                return
//            }
//
//            do {
//                self.myIpGeo = try JSONDecoder().decode(IpGeo.self, from: data)
//
//                DispatchQueue.main.async {
//                    self.ipLabel.text = self.myIpGeo?.description ?? ""
//                    //
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//
//        }.resume()
//    }
//


}

