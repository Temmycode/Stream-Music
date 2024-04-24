//
//  DatabaseRepository.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 23/04/2024.
//

//import Firebase
//import FirebaseFirestore

//class DatabaseRepository {
//    let firestore = Firestore.firestore()
//    
//    func getAllMusic() async -> [Song]? {
//        let musicRef = await firestore.collection("songs").getDocuments()
////            .getDocuments { querysnapshot, error in
////            guard error != nil else { return } // ensure there is no error
////            
////            if let documents = querysnapshot?.documents {
////                documents.map { document in
////                    try? document.data(as: Song.self)
////                }
////            }
////        }
//    }
//    
//    func addMusic(song: Song) async {
//        firestore.collection("songs").addDocument(data: song.toDictionary()!)
//    }
//}
