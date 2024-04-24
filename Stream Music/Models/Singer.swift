//
//  Singer.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import Foundation

struct Singer: Identifiable {
    var id: Int
    var name: String
    var email: String
    var profilePicture: String
    
    init(id: Int, name: String, email: String, profilePicture: String) {
        self.id = id
        self.name = name
        self.email = email
        self.profilePicture = profilePicture
    }
}
