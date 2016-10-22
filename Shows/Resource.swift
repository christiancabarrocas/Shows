//
//  Resource.swift
//  Shows
//
//  Created by Christian Cabarrocas on 22/10/16.
//  Copyright © 2016 CLabs. All rights reserved.
//

import Foundation

struct Resource<A> {
    let url: URL
    let parse: (Data) -> A?
}
