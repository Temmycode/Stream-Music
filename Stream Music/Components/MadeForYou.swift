//
//  MadeForYou.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 21/04/2024.
//

import SwiftUI

struct MadeForYou: View {
    let genere: Genere
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Image("image1")
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .clipShape(.rect(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Indonesian pops")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundStyle(.black1)
                
                Text("Nadine amizah, Ghea Indrawari, Yura Yunita")
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundStyle(.grey1)
            }
            .padding(4)
        }
        .frame(width: 200)
        .padding(4)
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    let genere = Genere(imageUrl: "", title: "String", description: "String")
    return MadeForYou(genere: genere)
}
