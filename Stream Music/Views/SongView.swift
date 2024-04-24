//
//  SongView.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI
import AVKit

struct SongView: View {
    @Environment(AudioPlayerViewModel.self) private var audioPlayerViewModel
    @Environment(\.dismiss) private var pop
    
    var body: some View {
        GeometryReader { geo in
            let width = geo.size.width
            
            ZStack {
                Color.green1.ignoresSafeArea()
                
                // MARK: BACKGROUND IMAGE FOR THE SONG
                NetworkImage(url: audioPlayerViewModel.currentSong!.backgroundImage) {
                    NoConnection().offset(y: -100)
                        .foregroundStyle(.black)
                }
                .ignoresSafeArea()
                
                Button(action: { pop() }) {
                    HStack {
                        Image(systemName: "chevron.down")
                            .font(.title2)
                            .frame(maxHeight: .infinity, alignment: .topLeading)
                            .padding(.leading, 20)
                            .padding(.top, 30)
                        
                        Spacer()
                    }
                }
                .foregroundStyle(.black)
                
                // MARK: ACTION CONTAINERS
                VStack(alignment: .center) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text( audioPlayerViewModel.currentSong!.title)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text( audioPlayerViewModel.currentSong!.title)
                                .font(.headline)
                                .fontWeight(.regular)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "square.and.arrow.up.fill")
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "music.note.list")
                        }
                    }
                    .padding(.bottom, 16)
                    
                    // MARK: PROGRESS INDICATOR
                    HStack {
                        ProgressView(value: audioPlayerViewModel.currentTime / audioPlayerViewModel.duration)
                            .progressViewStyle(.linear)
                            .frame(width: width * 0.77)
                        
                        Spacer()
                        
                        Text("\(audioPlayerViewModel.currentTime)")
                            .font(.subheadline)
                            .fontWeight(.regular)
                    }
                    .padding(.bottom, 28)
                    
                    // MARK: ACTION BUTTONS
                    HStack {
                        Image(systemName: "repeat")
                            .font(.title)
                        Spacer()
                        Image(systemName: "forward.end.fill")
                            .font(.title)
                        Spacer()
                        Button(action: {
                            audioPlayerViewModel.playOrPause()
                        }) {
                            Image(systemName: audioPlayerViewModel.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                                .font(.system(size: 55))
                        }
                        Spacer()
                        Image(systemName: "backward.end.fill")
                            .font(.title)
                        Spacer()
                        Image(systemName: "speaker.fill")
                            .font(.title)
                    }
                    .padding(.bottom, 28)
                    
                    Button(action: {}) {
                        Text("Open Lyrics")
                            .padding(.vertical, 6)
                            .padding(.horizontal, 14)
                            .background(.ultraThinMaterial)
                            .clipShape(.rect(cornerRadius: .infinity))
                            .padding(.bottom, 44)
                    }
                    
                }
                .foregroundStyle(.black)
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadii: .init(topLeading: 8, topTrailing: 8)))
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    SongView()
}
