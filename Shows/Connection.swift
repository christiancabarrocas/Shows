//
//  Connection.swift
//  Shows
//
//  Created by Christian Cabarrocas on 31/10/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

struct Connection {
    
    func retrieve(endpoint:String, completion: (_ response:[Show]) -> Void) {
        Alamofire.request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
        
        
        
//        Alamofire.request(.GET, endpoint).responseObject { (response:Response<NYResponse,NSError>) -> Void in
//            let nyResponse = response.result.value
//            if let shows = nyResponse?.results {
//                completion(result:shows)
//            }
//        }
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
