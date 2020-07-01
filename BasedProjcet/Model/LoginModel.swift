//
//  LoginModel.swift
//  WeKiddoLogo-School
//
//  Created by zein rezky chandra on 20/06/19.
//  Copyright © 2019 PT. Absolute Connection. All rights reserved.
//

import Foundation
import SwiftyJSON

class LoginModel: NSObject {
    var token = ""
    var menuNavbars = [MenuNavBarModel]()
    var userAccess = [UserAccessModel]()
    
    func objectMapping(json: JSON) {
        token = json["data"]["token"].stringValue
        
        for data in json["data"]["menuNavbars"].arrayValue {
            let d = MenuNavBarModel()
            d.objectMapping(json: data)
            menuNavbars.append(d)
        }
        for data in json["data"]["userAccess"].arrayValue {
            let d = UserAccessModel()
            d.objectMapping(json: data)
            userAccess.append(d)
        }
    }
}

class MenuNavBarModel: NSObject {
    var mobileMenuDesc: String?
    var mobileMenuId: Int?
    var sequenceNo: Int?
    
    func objectMapping(json: JSON) {
        mobileMenuDesc = json["mobileMenuDesc"].stringValue
        mobileMenuId = json["mobileMenuId"].intValue
        sequenceNo = json["sequenceNo"].intValue
    }
}

class UserAccessModel: NSObject {
    var name = ""
    var item = [ItemModel]()
    
    func objectMapping(json: JSON) {
        name = json["name"].stringValue
        for data in json["item"].arrayValue {
            let d = ItemModel()
            d.objectMapping(json: data)
            item.append(d)
        }
    }
}

class ItemModel: NSObject {
    var mobileMenuDesc: String?
    var mobileMenuId:Int?
    
    func objectMapping(json: JSON) {
        mobileMenuDesc = json["mobileMenuDesc"].stringValue
        mobileMenuId = json["mobileMenuId"].intValue
    }
}
