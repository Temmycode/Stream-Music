//
//  AudioPlayerViewModel.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import Observation
import AVFoundation

@Observable class AudioPlayerViewModel {
    var currentTime: TimeInterval = 0.0 // Tracks the current playback time
    var duration: TimeInterval = 0.0 // Tracks the total duration of the song
    var audioPlayer: AVPlayer?
    var isPlaying = false
    var currentSong: Song? // the current song being played
    var songQueue: [Song] = [] // list of songs gotten from the server as the current queue
    private var timeObserverToken: Any?
    
    private func observePlayerTime() {
        let interval = CMTime(seconds: 1, preferredTimescale: 10)
        timeObserverToken = audioPlayer?.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak self] currentTime in
            self?.currentTime = CMTimeGetSeconds(currentTime) // Update the current time
        }
    }
    
    private func observePlayerItem() {
        if let currentItem = audioPlayer?.currentItem {
            duration = CMTimeGetSeconds(currentItem.asset.duration)
        }
    }
    
    func setAudioPlayer(song: Song) {
        if currentSong == song { return }
        if audioPlayer != nil {
            audioPlayer = nil
        } // set the audio player to be empty if we are changing music
        audioPlayer = AVPlayer(url: URL(string: song.musicUrl)!)
        
        currentSong = song // set our current song to the selected song
        
        // fetch the remainaing songs i.e (the music queue)
    }
    
    func playOrPause() {
        guard let player = audioPlayer else { return }
        
        if isPlaying {
            player.pause()
            self.isPlaying = false
        } else {
            player.play()
            self.isPlaying = true
        }
        
        print(self.isPlaying)
    }
}
