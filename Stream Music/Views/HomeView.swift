//
//  HomeView.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 21/04/2024.
//

import SwiftUI

struct HomeView: View {
    let genere = Genere(imageUrl: "String", title: "String", description: "String")
    let singer = Singer(id: 2, name: "DAngelico", email: "dangelico@gmail.com", profilePicture: "https://images.unsplash.com/photo-1713208177902-10c27744e6e9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    let song = Song(id: 1, title: "Hidupku indah", ownerId: 1, ownerUsername: "James adam", musicUrl: "https://firebasestorage.googleapis.com/v0/b/stream-music-6fa94.appspot.com/o/y2mate.com%20-%20Asake%20YogaOrganise%20%20The%20Tonight%20Show%20Starring%20Jimmy%20Fallon.mp3?alt=media&token=4bbaa13d-9d6b-40ee-8b3c-db7caf027cdb", backgroundImage: "https://images.unsplash.com/photo-1629726211447-3df75890f372?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", duration: 120)
    
    var body: some View {
        ZStack {
            Color.greenBackground.ignoresSafeArea()
            
            VStack(spacing: 0) {
                // MARK: APP BAR
                appBar
                
                ScrollView {
                    // MARK: MADE FOR YOU
                    VStack {
                        MusicSection(title: "Made for you")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 10) { item in
                                    MadeForYou(genere: genere)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.bottom, 28)
                    
                    // MARK: POPULAR SINGERS
                    VStack {
                        MusicSection(title: "Popular singer")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ..< 5) { item in
                                    PopularSingers(singer: singer)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.bottom, 28)
                    
                    // MARK: POPULAR SINGERS
                    VStack {
                        MusicSection(title: "Favorite song")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ..< 5) { item in
                                    MusicCard(song: song)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.bottom, 152)
                }
            }
            .scrollIndicators(.hidden)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            
            CurrentMusicContainer()
                .padding(.horizontal, 20)
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    var appBar: some View {
        HStack {
            Text("Goor morning Desta!")
                .font(.title3)
                .fontWeight(.medium)
            
            Spacer()
            
            HStack(spacing: 12) {
                Image(systemName: "bell.fill")
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "person.fill")
                    .onTapGesture {
                        
                    }
            }
        }
        .padding(20)
        .background(.white)
    }
}

#Preview {
    HomeView()
}
