//
//  Endpoints.swift
//  Shows
//
//  Created by Christian Cabarrocas on 20/10/16.
//  Copyright © 2016 CLabs. All rights reserved.
//

import Foundation

enum EndpointData: String {
    case Base = "https://api.trakt.tv/shows/"
    case Sandbox = "https://api-staging.trakt.tv/shows/"
    case Trending = "trending"
    case Updated = "updated"
}

class Endpoints {
    
    class func trending() -> String {
        return EndpointData.Base.rawValue + EndpointData.Trending.rawValue
    }
}
