//
//  Category.swift
//  coder-swag
//
//  Created by Ireneusz Parysz on 05.03.2018.
//  Copyright © 2018 Ireneusz Parysz. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
