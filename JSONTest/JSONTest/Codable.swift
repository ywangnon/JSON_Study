//
//  Codable.swift
//  JSONTest
//
//  Created by Hansub Yoo on 2020/06/04.
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



class complexJSON: Codable {
    var name: String
    var family: String
    var age: Int
    var weight: Float
    var items: [ITEM]
    
    private enum CodingKeys: String, CodingKey {
        case name
        case family
        case age
        case weight
        case items
    }
    
    required init(from decoder:Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        family = try values.decode(String.self, forKey: .family)
        age = try values.decode(Int.self, forKey: .age)
        weight = try values.decode(Float.self, forKey: .weight)
        items = try values.decode([ITEM].self, forKey: .items)
    }
}

protocol ITEM: Codable {
    
}

class A: ITEM {
    var Rank: Int
    var type: String
    
    required init(from decoder:Decoder) throws {
        
    }
}

class B: ITEM {
    var type: String
    
    required init(from decoder:Decoder) throws {
        
    }
}

class C: ITEM {
    var name: String
    var about: Int
    
    required init(from decoder:Decoder) throws {
        
    }
}

struct D: Codable {
    
}
