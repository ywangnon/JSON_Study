//
//  EasyModel.swift
//  JSONTest
//
//  Created by Hansub Yoo on 2020/06/13.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import Foundation

struct easyJson: Codable {
    var name: String
    var family: String
    var age: Int
    var weight: Float
    
    private enum CodingKeys: String, CodingKey {
        case name
        case family
        case age
        case weight
    }
}
