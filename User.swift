//
//  User.swift
//  KomaliOSProject
//
//  Created by Felix12 on 08/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import Foundation

struct User:Decodable {
    var id: Int
    var userId:Int
    var title:String
    var email:String
    
}

struct Address:Decodable {
    
    var street:String
    var suite:String
    var city:String
    var zipcode:String
    
}

struct  geo:Decodable {
    
    var lat:String
    var lng:String
    
}
struct Company:Decodable {
    var name:String
    var catchphcase:String
    var bs : String
}
