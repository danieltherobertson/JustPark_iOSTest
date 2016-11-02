//
//  NetworkController.swift
//  JustPark_iOSTest
//
//  Created by Daniel Robertson on 02/11/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit

class NetworkController: NSObject {
    func makeLocationQueryTo(url: String, withParameters: (lat: String, lng: String, dist: String)) {
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "POST"
        let postString = "lat=\(withParameters.lat)&lng=\(withParameters.lng)&distance=\(withParameters.dist)"
        request.httpBody = postString.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            //On completion, check data
            guard let data = data, error == nil else {
                print("error: \(error)")
                return
            }
        
            //Then check for http errors
            if let httpStatus = response as? HTTPURLResponse , httpStatus.statusCode != 200 {
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(response)")
            }
            
            let responseString = String(data: data, encoding: String.Encoding.utf8)
            print("responseString = \(responseString)")
         
        }
        task.resume()
    }
}
