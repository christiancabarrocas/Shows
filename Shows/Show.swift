//
//  Show.swift
//  TVShow
//
//  Created by Christian Cabarrocas on 29/09/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//


import ObjectMapper

struct Show: Mappable {
    var country:String?
    var network:String?
    var title:String?
    var runtime:Double?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        country <- map["country"]
        network <- map["network"]
        runtime <- map["runtime"]
    }

}
