//
//  NetworkManager.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 10/8/21.
//

import UIKit
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
//    func fetchData(from url: String?, with complition: @escaping (IpGeo) -> Void) {
//        guard let stringURL = url else { return }
//        guard let url = URL(string: stringURL) else { return }
//        
//        URLSession.shared.dataTask(with: url) { (data, _, error) in
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let data = data else { return }
//            
//            do {
//                let ipGeo = try JSONDecoder().decode(IpGeo.self, from: data)
//                DispatchQueue.main.async {
//                    complition(ipGeo)
//                }
//            } catch let error {
//                print(error)
//            }
//            
//        }.resume()
//    }
    
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


