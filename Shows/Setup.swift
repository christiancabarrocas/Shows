//
//  Setup.swift
//  TVShow
//
//  Created by Christian Cabarrocas on 29/04/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Foundation

struct generalSetup {
    let GLOBAL_TIMEOUT = 15
}


/* API DOCUMENTATION
//http://docs.trakt.apiary.io/#

 let url = URL(string: "https://api.trakt.tv/shows/trending")!
 var request = URLRequest(url: url)
 request.addValue("application/json", forHTTPHeaderField: "Content-Type")
 request.addValue("2", forHTTPHeaderField: "trakt-api-version")
 request.addValue("[client_id]", forHTTPHeaderField: "trakt-api-key")
 
 let task = URLSession.shared.dataTask(with: request) { data, response, error in
 if let response = response, let data = data {
 */

//Client ID: 363da5d1cd7502047597fa6ae5635811856e4618df2d28888692c5e61431cf19
//Client Secret: 952c87fab6fab3c2f9849b63c69825d8bdf2d615f33740880a56d87594f3492d

/*REQUIRED HEADERS
 Header	Value
 Content-type *	application/json
 trakt-api-key *	Your client_id listed under your Trakt.tv applications.
 trakt-api-version *	2
 */

/*PARAMETERS
 page	integer	1	Number of page of results to be returned.
 limit	integer	10	Number of results to return per page.All paginated methods will return these HTTP headers.
 Header	Value
 X-Pagination-Page	Current page.
 X-Pagination-Limit	Items per page.
 X-Pagination-Page-Count	Total number of pages.
 X-Pagination-Item-Count	Total number of items.
 */

/* EXTENDED DATA
 full	Complete info for an item.
 metadata	Collection only. Additional video and audio info.
 */
