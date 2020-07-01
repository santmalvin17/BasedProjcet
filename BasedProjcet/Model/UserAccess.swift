//
//  UserAccess.swift
//  BasedProjcet
//
//  Created by Malvin Santoso on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserAccess: NSObject{
    var item = [Item]()
    
    func objectMapping(json:JSON){
        for data in json["item"].arrayValue {
            let d = Item()
            d.objectMapping(json: data)
            item.append(d)
        }
    }
}
