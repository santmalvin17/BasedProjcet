//
//  ACRequest.swift
//  AYO CLEAN
//
//  Created by Zein Rezky Chandra on 23/05/18.
//  Copyright © 2019 PT. Absolute Connection. All rights reserved.


import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD

class ACRequest: NSObject {

    static func POST_SIGNIN(
        email:String,
        password:String){
        let parameters:Parameters = [

            "email":email,
            "password":password,

        ]
        print(parameters)
        let headers:HTTPHeaders = ["Content-Type":"application/json"]

        ACAPI.POST(url: "https://acl-hoonian.herokuapp.com/login", parameter: parameters, header: headers, showHUD: true)
        
    }
    }
    
