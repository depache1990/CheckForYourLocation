//
//  ViewController.swift
//  HW.10.IP_Geo
//
//  Created by Anton Duplin on 6/8/21.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
   
    
    @IBAction func clickButton(_ sender: UIButton) {
    
        guard  let url = URL(string: "https://freegeoip.app/json/") else {
              return
          }
          URLSession.shared.dataTask(with: url) { data, _, error in
              guard let data = data else {
                  print (error?.localizedDescription ?? "no error description")
              return
              
              }
            
            do {
                let ipGeo = try JSONDecoder().decode(IpGeo.self, from: data)
                self.successAlert()
                print(ipGeo)
            } catch let error {
                self.failedAlert()
                print(error.localizedDescription)
            }
            
          }.resume()
        
    }
    // MARK: - Navigation
 
    
    
    // MARK: - Private Methods
 private func successAlert() {
     DispatchQueue.main.async {
         let alert = UIAlertController(
             title: "Success",
             message: "Please, see the result in the Debug area",
             preferredStyle: .alert
         )
         let okAction = UIAlertAction(title: "Ok", style: .default)
         alert.addAction(okAction)
        self.present(alert, animated: true)
     }
 }

 private func failedAlert() {
     DispatchQueue.main.async {
         let alert = UIAlertController(
             title: "Failed",
             message: "Please, see the error result in the Debug area",
             preferredStyle: .alert
         )
         let okAction = UIAlertAction(title: "Ok", style: .default)
         alert.addAction(okAction)
         self.present(alert, animated: true)
     }

 }

    
}



// MARK: - Networking
extension UIViewController {
    func downloadJson() {
     
}
}
   

