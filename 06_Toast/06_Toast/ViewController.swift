//
//  ViewController.swift
//  06_Toast
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.makeToast("토스트 메세지 입니다.")
        // toast presented with multiple options and with a completion closure
        self.view.makeToast("This is a piece of toast", duration: 2.0, position: .bottom, title: "Toast Title", image: #imageLiteral(resourceName: "flowers")) { didTap in
            if didTap {
                print("completion from tap")
            } else {
                print("completion without tap")
            }
        }
    }


}

