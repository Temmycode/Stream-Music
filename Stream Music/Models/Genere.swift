//
//  Genere.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 21/04/2024.
//

import Foundation

struct Genere: Identifiable {
    var id = UUID()
    var imageUrl: String
    var title: String
    var description: String
    
    init(imageUrl: String, title: String, description: String) {
        self.imageUrl = imageUrl
        self.title = title
        self.description = description
    }
}
