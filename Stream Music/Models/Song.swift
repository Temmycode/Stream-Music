//
//  Song.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import Foundation

struct Song: Identifiable, Codable {
    var id: Int
    var title: String
    var ownerId: Int
    var ownerUsername: String
    var musicUrl: String
    var backgroundImage: String
    var duration: Double
    
    init(id: Int, title: String, ownerId: Int, ownerUsername: String, musicUrl: String, backgroundImage: String, duration: Double) {
        self.id = id
        self.title = title
        self.ownerId = ownerId
        self.ownerUsername = ownerUsername
        self.musicUrl = musicUrl
        self.backgroundImage = backgroundImage
        self.duration = duration
    }
    
    func toDictionary() -> [String: Any]? {
        if let data = try? JSONEncoder().encode(self) {
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            return json as? [String: Any]
        }
        return nil
    }
}

extension Song: Equatable {
    static func ==(lhs: Song, rhs: Song) -> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title && lhs.ownerId == rhs.ownerId && lhs.ownerUsername == rhs.ownerUsername && lhs.musicUrl == rhs.musicUrl && lhs.backgroundImage == rhs.backgroundImage && lhs.duration == rhs.duration
    }
}
