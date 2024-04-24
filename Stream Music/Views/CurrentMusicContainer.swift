//
//  CurrentMusicContainer.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI

struct CurrentMusicContainer: View {
    @Environment(AudioPlayerViewModel.self) private var audioPlayerViewModel
    @State private var openMusicSheet = false
    
    var body: some View {
        VStack {
            HStack(spacing: 8) {
                if let currentSong = audioPlayerViewModel.currentSong {
                    NetworkImage(url: currentSong.backgroundImage) {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.green2)
                    }
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(.rect(cornerRadius: 8))
                    .onTapGesture {
                        openMusicSheet.toggle()
                    }
                } else {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 48, height: 48)
                        .foregroundStyle(.green2)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    
                }
                
                if let currentSong = audioPlayerViewModel.currentSong {
                    Text(currentSong.title)
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Text(currentSong.ownerUsername)
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundStyle(.grey1)
                    
                } else {
                    Text("No song currently playing")
                        .font(.headline)
                        .fontWeight(.medium)
                    
                    Text("-")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundStyle(.grey1)
                }
                
                Spacer()
                
                Button(action: { audioPlayerViewModel.playOrPause() }) {
                    Image(systemName: audioPlayerViewModel.isPlaying ? "pause.fill" : "play.fill")
                        .font(.title)
                }
                .foregroundStyle(.black)
                
                Image(systemName: "speaker.fill")
                    .font(.title)
            }
            .padding(.bottom, 8)
            
            // MARK: PROGRESS INDICATOR
            HStack {
                ProgressView(value: 0.5)
                    .progressViewStyle(.linear)
                
                Spacer()
                
                Text("-1:40")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .padding(.leading, 8)
            }
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 12, trailing: 16))
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12) // Consistent corner radius
                .stroke(lineWidth: 1) // Define stroke width
                .foregroundColor(.green2) // Border color
        )
        .sheet(isPresented: $openMusicSheet, content: {
            SongView()
        })
    }
}

#Preview {
    CurrentMusicContainer()
}
