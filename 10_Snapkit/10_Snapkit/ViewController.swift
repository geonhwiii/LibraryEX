//
//  ViewController.swift
//  10_Snapkit
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var view1: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    lazy var view2: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.cyan
        return view
    }()
    lazy var view3: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    lazy var view4: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.brown
        return view
    }()
    lazy var view5: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.darkGray
        return view
    }()
    lazy var view6: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.magenta
        return view
    }()
    lazy var view7: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    lazy var view8: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()
    lazy var view9: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(view1)
        view1.snp.makeConstraints { (m) in
            m.width.equalTo(view)
            m.height.equalTo(64)
            m.top.equalTo(view).offset(44)
        }
        
        view1.addSubview(view2)
        view2.snp.makeConstraints { (m) in
            m.width.equalTo(view1.snp.height)
            m.height.equalTo(view1.snp.height)
            m.left.equalTo(view1)
            m.top.equalTo(view1)
        }
        
        view1.addSubview(view3)
        view3.snp.makeConstraints { (m) in
            m.width.equalTo(view1.snp.height)
            m.height.equalTo(view1.snp.height)
            m.right.equalTo(view1)
            m.top.equalTo(view1)
        }
        view.addSubview(view4)
        view4.snp.makeConstraints { (m) in
            m.width.equalTo(view.snp.width).dividedBy(4)
            m.height.equalTo(view.snp.width).dividedBy(4)
            m.left.equalTo(view.snp.left)
            m.bottom.equalTo(view.snp.bottom).offset(-34)
            
        }
        view.addSubview(view5)
        view5.snp.makeConstraints { (m) in
            m.width.equalTo(view.snp.width).dividedBy(4)
            m.height.equalTo(view.snp.width).dividedBy(4)
            m.left.equalTo(view4.snp.right)
            m.bottom.equalTo(view.snp.bottom).offset(-34)
            
        }
        view.addSubview(view6)
        view6.snp.makeConstraints { (m) in
            m.width.equalTo(view.snp.width).dividedBy(4)
            m.height.equalTo(view.snp.width).dividedBy(4)
            m.left.equalTo(view5.snp.right)
            m.bottom.equalTo(view.snp.bottom).offset(-34)
            
        }
        view.addSubview(view7)
        view7.snp.makeConstraints { (m) in
            m.width.equalTo(view.snp.width).dividedBy(4)
            m.height.equalTo(view.snp.width).dividedBy(4)
            m.left.equalTo(view6.snp.right)
            m.bottom.equalTo(view.snp.bottom).offset(-34)
            
        }
        
        view.addSubview(view8)
        view8.snp.makeConstraints { (m) in
            m.left.equalTo(view.snp.left)
            m.right.equalTo(view)
            m.top.equalTo(view1.snp.bottom)
            m.bottom.equalTo(view7.snp.top)
        }
        
        view.addSubview(view9)
        view9.snp.makeConstraints { (m) in
            m.edges.equalTo(view8).inset(5)
            
        }
        
        
        
    }


}

