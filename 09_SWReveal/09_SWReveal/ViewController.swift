//
//  ViewController.swift
//  09_SWReveal
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftButton.target = self.revealViewController()
        leftButton.action = #selector(SWRevealViewController.revealToggle(_:))
    }


}

