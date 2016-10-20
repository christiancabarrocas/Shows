////
////  ShowsList.swift
////  TVShow
////
////  Created by Christian Cabarrocas on 29/4/15.
////  Copyright (c) 2015 Wasabilabs. All rights reserved.
//
//import UIKit
////import Alamofire
//
//
//class ShowsList: UITableViewController,TrendingShowsProtocolDelegate {
//
////    var showsList:[Show]! {
////        set {
////            self.tableView.reloadData()
////        }
////        get {
////            return self.showsList
////        }
////    }
//    var showsList:[Show]!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        Communications().delegate = self
//        Communications().requestTrendingShows()
//    }
//    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if (showsList?.count > 0) {
//            return self.showsList.count
//        }
//        return 0
//    }
//
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("showCell", forIndexPath: indexPath) as! ShowCellTableViewCell
//        let show:Show = showsList[indexPath.row]
//        cell.configureShowCell(show.title, country: show.country, network: show.network)
//        return cell
//    }
//    
//    
//    func requestTrendingShowsResponse(status:Status, shows:[Show]) {
//        if (status == Status.OK) {
//            showsList = shows
//            tableView.reloadData()
//        }
//    }
//}
