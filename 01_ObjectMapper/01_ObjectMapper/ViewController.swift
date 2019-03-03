//
//  ViewController.swift
//  01_ObjectMapper
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var json_str = """
{ "name":"John", "age":"31", "city":"New York" }
"""
        var userDTO = UserDTO(JSONString: json_str)
        
        print((userDTO?.name)!)
        print((userDTO?.age)!)
        print((userDTO?.city)!)
        
    }


}

