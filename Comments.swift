//
//  Comments.swift
//  KomaliOSProject
//
//  Created by Felix12 on 08/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import Foundation

struct Comments:Decodable {
    var postId:Int
    var id:Int
    var name:String
    var email:String
    var body:String
}
