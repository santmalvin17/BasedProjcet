//
//  ModelDataLogin.swift
//  BasedProjcet
//
//  Created by Malvin Santoso on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import Foundation

struct ModelDataLogin: Decodable {
    var menuNavBar:[MenuNavBar]?
    var userAccess:[UserAccess]?
    var token:String?
    
}
