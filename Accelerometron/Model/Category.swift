//
//  Category.swift
//  Accelerometron
//
//  Created by Jay Raval on 3/16/19.
//  Copyright © 2019 Jay Raval. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
