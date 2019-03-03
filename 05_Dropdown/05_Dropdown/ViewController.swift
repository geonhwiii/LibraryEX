//
//  ViewController.swift
//  05_Dropdown
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    var dropDown: DropDown?
    
    @IBOutlet weak var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropDown = DropDown()
        // The view to which the drop down will appear on
        dropDown?.anchorView = button // UIView or UIBarButtonItem
        dropDown?.bottomOffset = CGPoint(x: 0, y:(dropDown?.anchorView?.plainView.bounds.height)!)
        
        // The list of items to display. Can be changed dynamically
        dropDown?.dataSource = ["Car", "Motorcycle", "Truck"]
        
        button.addTarget(self, action: #selector(dropDownButton), for: .touchUpInside)
        // Action triggered on selection
        dropDown?.selectionAction = { [unowned self] (index: Int, item: String) in
            self.button.setTitle(item, for: .normal)
        }
    }
    
    @objc func dropDownButton() {
        dropDown?.show()
    }
    
}

