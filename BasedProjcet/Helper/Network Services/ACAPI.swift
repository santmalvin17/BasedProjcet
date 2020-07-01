//
//  ACAPI.swift
//  AYO CLEAN
//
//  Created by Zein Rezky Chandra on 23/05/18.
//  Copyright © 2019 PT. Absolute Connection. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
import SwiftyJSON

class ACAPI: NSObject {
    static func GET(url:String,
                    header:HTTPHeaders,
                    showHUD:Bool,
                    completion:@escaping (Any) -> Void) {
        if(showHUD) {
            SVProgressHUD.show(withStatus: "Please wait...")
        }
        AF.request(
            URL(string: url)!,
            method: .get,
            parameters: nil,
            encoding : URLEncoding.default,
            headers: header
            ).responseJSON{ (response) in
                
        }
    }
    
    static func POST(url:String, parameter:Parameters, header:HTTPHeaders , showHUD:Bool) {
               if(showHUD) {
            SVProgressHUD.show(withStatus: "Please wait...")
        }
        AF.request(
            URL(string: url)!,
            method: .post,
            parameters: parameter,
            encoding: URLEncoding.default,
            headers: header).responseJSON { (response) in
            print(response)
        }
    }
  
}
