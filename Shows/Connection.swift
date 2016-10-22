//
//  Connection.swift
//  Shows
//
//  Created by Christian Cabarrocas on 31/10/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class Connection {
    
    let headers: HTTPHeaders = [
        "trakt-api-key": "363da5d1cd7502047597fa6ae5635811856e4618df2d28888692c5e61431cf19",
        "Content-type": "application/json",
        "trakt-api-version":"2"
    ]
    
    let parameters: Parameters = ["X-Pagination-Item-Count": 100]
    
    func load<A>(resource: Resource<A>, completion: @escaping (A?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, _, _ in
            let result = data.flatMap(resource.parse)
            completion(result)
        }.resume()
    }
    
    func get() {
        Alamofire.request(Endpoint.Trending.url(), parameters: parameters, headers: headers).responseJSON { response in
            print(response)
        }
    }
}

/*
enum Router: URLRequestConvertible {
    static let baseUrlString = "some url string"
    
    case Get(query: String)
    
    var URLRequest: NSMutableURLRequest {
        let (path: String, parameters: [String: AnyObject]?) = {
            switch self {
            case .Get(let query):
                return ("/get", ["q": query])
            }
        }()
        
        let URL = NSURL(string: Router.baseUrlString)!
        let URLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(path))
        // set header fields
        URLRequest.setValue("a", forHTTPHeaderField: "Authorization")
        
        let encoding = Alamofire.ParameterEncoding.URL
        return encoding.encode(URLRequest, parameters: parameters).0
    }
}
 
Manager.sharedInstance.request(Router.Get(query: "test"))
 
*/



/*
 extension Manager {
 public func myRequest(
 method: Alamofire.Method,
 _ URLString: URLStringConvertible,
 parameters: [String: AnyObject]? = nil,
 encoding: ParameterEncoding = .URL,
 headers: [String: String]? = ["MY-STATIC-API-KEY" : "BLAHBLAHBLAH"])
 -> Request
 {
 return Manager.sharedInstance.request(
 method,
 URLString,
 parameters: parameters,
 encoding: encoding,
 headers: headers
 )
 }
 }
 */
