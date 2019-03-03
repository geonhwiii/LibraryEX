//
//  ViewController.swift
//  04_Realm
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import RealmSwift

class Cart: Object {
    @objc dynamic var name = ""
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var notificationToken: NotificationToken?
    var realm: Realm?
    var items: Results<Cart>?
    
    @IBAction func button(_ sender: Any) {
        let cart = Cart()
        cart.name = textField.text!
        try! realm?.write {
            realm?.add(cart)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = items![indexPath.row].name
        
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Migration이 필요할 때 데이터베이스 초기화
        let config = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
        Realm.Configuration.defaultConfiguration = config
        realm = try! Realm()
        // Cart 데이터들을 수집하는 코드
        items = realm?.objects(Cart.self)
        // Push Driven 작동 시키는 코드
        notificationToken = realm?.observe({ (noti, realm) in
            self.tableView.reloadData()
        })
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        notificationToken?.invalidate()
    }


}

