//
//  IpGeo.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//
struct IpGeo: Decodable {
    let country: String
    let countryCode: String
    let region: String
    let regionName: String
    let city: String
    let zip: String
    let timezone: String
    let query: String
    var description: String {
        """
        Country Code: \(countryCode)
        Country Name: \(country)
        Region Code: \(region)
        Region Name: \(regionName)
        City: \(city)
        Zip Code: \(zip)
        Time Zone: \(timezone)
        ip: \(query)
    """
    }
//    init (value: [String: Any]){
//        ip = value["ip"] as? String ?? ""
//country_code = value["country_code"] as? String ?? ""
//country_name = value["country_name"] as? String ?? ""
//region_code = value["region_code"] as? String ?? ""
//region_name = value["region_name"] as? String ?? ""
//city = value["city"] as? String ?? ""
//zip_code = value["zip_code"] as? String ?? ""
//time_zone = value["time_zone"] as? String ?? ""
//latitude = value["latitude"] as? Double ?? 0
//longitude = value["longitude"] as? Double ?? 0
//metro_code = value["metro_code"] as? String ?? ""
//
//    }
//    static func getIpGeo(from value: Any) ->IpGeo? {
//        guard let value = value as? [String: Any] else { return nil }
//        return IpGeo(value: value)
//    
//    }
    

}

enum URLS: String {
    case myIpAddress = "http://ip-api.com/json/"
    case postRequest = "https://jsonplaceholder.typicode.com/posts"
}

