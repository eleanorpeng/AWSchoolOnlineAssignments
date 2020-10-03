//
//  ViewController.swift
//  Station
//
//  Created by Eleanor Peng on 2020/10/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
    }

    func getData() {
        let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
      
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
                let stationID = json?["stationID"] as? String
                let stationName = json?["stationName"] as? String
                let address = json?["stationAddress"] as? String
                print(stationID!)
                DispatchQueue.main.async {
                    self.stationIDLabel.text = stationID
                    self.stationNameLabel.text = stationName
                    self.stationAddressLabel.text = address
                }
            } catch let jsonError {
                print(jsonError)
            }
            
        }.resume()
    }
}

