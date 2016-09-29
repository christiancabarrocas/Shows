//
//  Show.swift
//  TVShow
//
//  Created by Christian Cabarrocas on 29/09/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//


import ObjectMapper

struct Show: Mappable {
    let country:String?
    let network:String?
    let title:String?
    let runtime:Double?
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        country <- map["country"]
        network <- map["network"]
        runtime <- map["runtime"]
    }

}
