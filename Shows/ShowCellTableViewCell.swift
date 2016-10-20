//
//  ShowCellTableViewCell.swift
//  TVShow
//
//  Created by Christian Cabarrocas on 30/04/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import UIKit

class ShowCellTableViewCell: UITableViewCell {

    @IBOutlet var title:UILabel!
    @IBOutlet var country:UILabel!
    @IBOutlet var network:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    func configureShowCell (title:String,country:String,network:String) {
        self.title.text = title
        self.network.text = network
        self.country.text = country
    }

}
