//
//  ViewModel.swift
//  GooglePlaceAPIDemo
//
//  Created by Kittitat Rodphotong on 8/25/2559 BE.
//  Copyright © 2559 FameSprinter. All rights reserved.
//

import Foundation
import Alamofire

class ViewModel {
    // MARK: - Variable
    private let GoogleBaseURL: String = "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
    
    // MARK: - Private Function
    private func paramatersWithLL() -> [String:AnyObject] {
        let params: [String:AnyObject] = ["location": "18.796143,98.979263",
                                          "radius": 1000,
                                          "types": "food",
                                          "name": "ผัดไทย",
                                          "key": "your_key"]
        
        return params
        
    }

    
    // MARK: - Function
    func restaurantData() {
        Alamofire.request(.GET, GoogleBaseURL, parameters: paramatersWithLL())
            .responseJSON { response in
                print(response.request)  // original URL request
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
    
    
    
}