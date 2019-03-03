//
//  ViewController.swift
//  02_Papago
//
//  Created by 정건휘 on 14/02/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://openapi.naver.com/v1/papago/n2mt"
        let params = ["source":"ko",
                      "target":"en",
                      "text":"만나서 반갑습니다."]
        let header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"cKIIkx4NsB1K7m2nSz5J",
                      "X-Naver-Client-Secret":"PCKLYof2C8"]
    
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseObject { (response: DataResponse<PapagoDTO>) in
            let papagoDTO = response.result.value
            print((papagoDTO?.message?.result?.translatedText)!)
        }
    
    }


}

