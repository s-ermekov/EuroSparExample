//
//  Header.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct Header: View {
    @State private var favorite: Bool = false
    
    var body: some View {
        ZStack {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                    .font(.system(size: 22))
                    .padding(.leading, 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(alignment: .bottom, spacing: 0) {
                Button {
                    
                } label: {
                    Image(systemName: "list.bullet.rectangle")
                        .font(.system(size: 22))
                        .padding(.trailing, 8)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .padding(.horizontal, 8)
                }
                
                Button {
                    favorite.toggle()
                } label: {
                    Image(systemName: favorite ? "heart.fill" : "heart")
                        .font(.system(size: 22))
                        .padding(.leading, 8)
                        .padding(.trailing, 20)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .foregroundColor(Color("accentGreen"))
        .padding(.bottom, 12)
    }
}

#Preview {
    ContentView()
}
