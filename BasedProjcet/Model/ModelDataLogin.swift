//
//  ModelDataLogin.swift
//  BasedProjcet
//
//  Created by Malvin Santoso on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import Foundation
import SwiftyJSON


class ModelDataLogin: NSObject {
    var menuNavbars = [MenuNavBar]()
    var userAccess = [UserAccess]()
    var token = ""
    
    func objectMapping(json: JSON){
        for data in json["data"]["menuNavbars"].arrayValue {
            let d = MenuNavBar()
//            d.objectMapping(json: data)
            menuNavbars.append(d)
        }
        for data in json["data"]["userAccess"].arrayValue {
            let d = UserAccess()
            d.objectMapping(json: data)
            userAccess.append(d)
        }
        
        token = json["data"]["token"].stringValue
        
    }
}
