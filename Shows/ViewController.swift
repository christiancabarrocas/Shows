//
//  ViewController.swift
//  Shows
//
//  Created by Christian Cabarrocas on 29/09/16.
//  Copyright © 2016 CLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Connection().get()
    }
}

