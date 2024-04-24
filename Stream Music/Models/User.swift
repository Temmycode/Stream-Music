//
//  User.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 23/04/2024.
//

import Foundation

class User {
    var id: String?
    var username: String?
    var email: String?
    var isSinger: Bool?
    
    init(id: String?, username: String?, email: String?, isSinger: Bool? = nil) {
        self.id = id
        self.username = username
        self.email = email
        self.isSinger = isSinger
    }
}
