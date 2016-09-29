//
//  Connection.swift
//  Shows
//
//  Created by Christian Cabarrocas on 31/10/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Alamofire

struct Connection {
    
    func update () {
        Alamofire.request(.GET, Configuration().API_SHOWS_TRENDING)
            .responseJSON { response in
//                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}
