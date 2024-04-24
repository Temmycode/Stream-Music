//
//  NoConnection.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI

struct NoConnection: View {
    var body: some View {
        Image(systemName: "music.note")
            .font(.system(size: 80))
            .frame(maxWidth: .infinity, maxHeight: 380)
            .background(.grey1)
            .clipShape(.rect(cornerRadius: 25))
            .shadow(color: .green1.opacity(0.5), radius: 10)
            .padding(.horizontal, 30)
    }
}

#Preview {
    NoConnection()
}
