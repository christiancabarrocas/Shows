//
//  Setup.swift
//  TVShow
//
//  Created by Christian Cabarrocas on 29/04/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Foundation

struct generalSetup {
    let API_KEY = "dc421bea290f28b1f45bb97331518772"
    let GLOBAL_TIMEOUT = 30
}

struct endPoints {
    let API_BASE_URL = "http://api.trakt.tv/"
    let API_SHOWS_TRENDING = "shows/trending.json/dc421bea290f28b1f45bb97331518772"
    let API_SHOWS_UPDATED = "shows/updated.json/dc421bea290f28b1f45bb97331518772/"
}

/* API CALL EXAMPLES

http://trakt.tv/api-docs

SHOWS

shows/trending - GET
Returns all shows being watched right now.
http://api.trakt.tv/shows/trending.format/apikey
http://api.trakt.tv/shows/trending.json/dc421bea290f28b1f45bb97331518772

shows/updated - GET
Returns all shows updated since a timestamp. The server time is in PST.
To establish a baseline timestamp, you can use the server/time method.
It's recommended to store the timestamp so you can be efficient in using this method.
http://api.trakt.tv/shows/updated.format/apikey/timestamp
http://api.trakt.tv/shows/updated.json/dc421bea290f28b1f45bb97331518772/1328756880

*/

/*
wasabilabs/default
*/


/* TODOS

Alamofire Framework
Push notifications
Core Data
Mogenerator
Localization
Needs to protect Core Data parsing from empty title shows.
Add pull to refresh

*/