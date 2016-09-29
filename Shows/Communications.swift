////
////  Communications.swift
////  TVShow
////
////  Created by Christian Cabarrocas on 30/04/15.
////  Copyright (c) 2015 Wasabilabs. All rights reserved.
////
//
//import Foundation
////import Alamofire
//
//
////enum Result {
////    case OK
////    case Error<ErrorType>
////}
//
//
//class Communications {
//        
//    init() {
//        //TODO: Init the communications manager with security setup, cache, etc...
//    }
//
////    class func requestTrendingShows() {
////        let url = NSURL(string: endPoints().API_BASE_URL + endPoints().API_SHOWS_TRENDING)
////        if let shows = makeRequest(url!) {
////            delegate!.requestTrendingShowsResponse(Status.OK, shows: shows)
////        }
////    }
////    
////    private class func makeRequest(url:NSURL) -> [Show]! {
////        var responseData:[Show]!
////        Alamofire.request(.GET, url).responseJSON { (request, response, data, error) in
////            if let status = response as NSHTTPURLResponse! {
////                let sCode = status.statusCode
////                if (sCode != 200){
////                    return []
////                }
////            }
////            
////            if(error != nil) {
////                NSLog("Error: \(error)")
////                //error handling
////            }
////            else if (data != nil) {
////                if let responseData = self.parse(JSON(data!)){
////                    return responseData
////                }
////            }
//        }
//        return nil
//    }
//    
//    private func parse(data:JSON) -> [Show] {
//        var showsList = [Show]()
//        for (index, element) in data {
//            let show: Show = parseShow(data[index])
//            showsList.append(show)
//        }
//        return showsList
//    }
//    
//    private func parseShow(data:JSON) -> Show {
//        let showTitle:JSON = data["title"]
//        let title = showTitle.string!
//        let showCountry:JSON = data["country"]
//        let country = showTitle.string!
//        let showNetwork:JSON = data["network"]
//        let network = showNetwork.string!
//        let showRuntime:JSON = data["runtime"]
//        let runtime = showRuntime.double!
//        let show = Show(country: country, network:network, title: title, runtime:runtime)
//        return show
//    }
//}
