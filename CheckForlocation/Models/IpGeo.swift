//
//  IpGeo.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//
struct IpGeo: Decodable {
    let ip: String
    let country_code: String
    let country_name: String
    let region_code: String
    let region_name: String
    let city: String
    let zip_code: String
    let time_zone: String
    let latitude: Double
    let longitude: Double
    let metro_code: String
    var description: String {
        """
        ip: \(ip)
        Country Code: \(country_code)
        Country Name: \(country_name)
        Region Code: \(region_code)
        Region Name: \(region_name)
        City: \(city)
        Zip Code: \(zip_code)
        Time Zone: \(time_zone)
        Latitude: \(latitude)
        Longitude: \(longitude)
        Metro Code: \(metro_code)
    """
    }
    init (value: [String: Any]){
        ip = value["ip"] as? String ?? ""
country_code = value["country_code"] as? String ?? ""
country_name = value["country_name"] as? String ?? ""
region_code = value["region_code"] as? String ?? ""
region_name = value["region_name"] as? String ?? ""
city = value["city"] as? String ?? ""
zip_code = value["zip_code"] as? String ?? ""
time_zone = value["time_zone"] as? String ?? ""
latitude = value["latitude"] as? Double ?? 0
longitude = value["longitude"] as? Double ?? 0
metro_code = value["metro_code"] as? String ?? ""
        
    }
    static func getIpGeo(from value: Any) ->IpGeo? {
        guard let value = value as? [String: Any] else { return nil }
        return IpGeo(value: value)
    
    }
    

}

enum URLS: String {
    case myIpAddress = "https://freegeoip.app/json/"
    case postRequest = "https://jsonplaceholder.typicode.com/posts"
}

