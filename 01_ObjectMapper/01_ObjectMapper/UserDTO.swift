//
//  UserDTO.swift
//  01_ObjectMapper
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import ObjectMapper

class UserDTO: Mappable {
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        age <- map["age"]
        city <- map["city"]
    }
    
    var name: String?
    var age: String?
    var city: String?
}
