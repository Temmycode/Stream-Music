//
//  MusicCards.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI

struct MusicCard: View {
    @Environment(AudioPlayerViewModel.self) private var audioPlayerViewModel
    @State var openSongSheet = false
    let song: Song
    
    var body: some View {
        Button {
            audioPlayerViewModel.setAudioPlayer(song: song)
            openSongSheet.toggle()
        } label: {
            VStack(alignment: .leading, spacing: 8.0) {
                NetworkImage(url: song.backgroundImage) {
                    ProgressView()
                }
                .scaledToFill()
                .frame(height: 100)
                .clipShape(.rect(cornerRadius: 8))
                
                VStack(alignment: .leading, spacing: 4.0) {
                    Text(song.title)
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundStyle(.black1)
                    
                    Text(song.ownerUsername)
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundStyle(.grey1)
                }
                .padding(4)
            }
            .frame(width: 160)
            .padding(4)
            .background(.white)
            .clipShape(.rect(cornerRadius: 12))
            .padding(.trailing, 4)
            .sheet(isPresented: $openSongSheet) {
                SongView()
            }
        }
    }
}

