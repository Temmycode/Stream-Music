//
//  Sections.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 21/04/2024.
//

import SwiftUI

struct MusicSection: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("See all")
                .foregroundStyle(.green1)
                .font(.footnote)
                .fontWeight(.semibold)
        }
        .padding(20)
    }
}

#Preview {
    MusicSection(title: "Made for you")
}
