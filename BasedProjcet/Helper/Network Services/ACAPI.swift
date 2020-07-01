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
            encoding: JSONEncoding.default,
            headers: header).responseJSON { (response) in
                do {
                    let json = try JSON(data: response.data!)
                    // make sure this JSON is in the format we expect
                    if let modelDataLogin = try JSONDecoder().decode(ModelDataLogin.self, from: json["data"].rawData()) as? ModelDataLogin {
                        // try to read out a string array
                        print(modelDataLogin.token!)

                    }


                } catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }
        }
    }
  
}
