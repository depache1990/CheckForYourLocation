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
    let metro_code: Int
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
    
}

enum URLS: String {
    case myIpAddress = "https://freegeoip.app/json/"
    case postRequest = "https://jsonplaceholder.typicode.com/posts"
}

