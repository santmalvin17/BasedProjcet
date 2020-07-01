//
//  Item.swift
//  BasedProjcet
//
//  Created by Malvin Santoso on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import Foundation
import SwiftyJSON

class Item: NSObject{
    var mobileMenuDesc = ""
    var mobileMenuId = ""
    
    func objectMapping(json: JSON){
        mobileMenuDesc = json["mobileMenuDesc"].stringValue
        mobileMenuId = String(json["mobileMenuId"].stringValue)

    }
}
