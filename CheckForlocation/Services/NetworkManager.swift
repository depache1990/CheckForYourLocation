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
    
    func getUsers(_ completion: @escaping (IpGeo) -> Void) {
        AF.request(URLS.myIpAddress.rawValue, method: .get)
            .validate()
            .responseJSON { dataResponse in
             
                switch dataResponse.result {
                
                
                case .success(let value):
                    guard let results = IpGeo.getIpGeo(from: value) else { return }
                    completion(results)
                case .failure(let error):
                    print(error)
                }
    }
    
    
    



}
}
