//
//  PopularSingers.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI

struct PopularSingers: View {
    let singer: Singer
    
    var body: some View {
        VStack(spacing: 12) {
            NetworkImage(url: singer.profilePicture) {
                ProgressView()
            }
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(.circle)
            
            Text(singer.name)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(width: 84)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    let singer = Singer(id: 1, name: "James adam", email: "shady@gmail.com", profilePicture: "https://images.unsplash.com/photo-1713208177902-10c27744e6e9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    
    return ZStack {
        Color.blue.ignoresSafeArea()
        
        PopularSingers(singer: singer)
    }
}
