//
//  NetworkImage.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 22/04/2024.
//

import SwiftUI

struct NetworkImage<Content: View>: View {
    var url: String
    let placeholder: Content
    
    init(url: String, @ViewBuilder _ placeholder: () -> Content) {
        self.url = url
        self.placeholder = placeholder()
    }
    
    var body: some View {
        return AsyncImage(url: URL(string: url)) { phase in
            if let image = phase.image {
                image.resizable() // Displays the loaded image.
            } else if phase.error != nil {
                Color.red // Indicates an error.
            } else {
                placeholder //Acts as a placeholder.
            }
        }
    }
}

#Preview {
    NetworkImage(url: "https://images.unsplash.com/photo-1713208177902-10c27744e6e9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D") {
        ProgressView()
    }
}
