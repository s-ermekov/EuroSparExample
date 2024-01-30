//
//  ImageView.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct ImageBlock: View {
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Image("lipa")
                    .resizable()
                    .scaledToFit()
                
                Text("Цена по карте")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .padding(6)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundColor(Color("accentGreen"))
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, 12)
                    .padding(.leading, 20)
            }
            .frame(maxHeight: width * 0.75)
            .background(Color.white)
            
            HStack {
                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.1")
                    Rectangle()
                        .foregroundColor(.secondary)
                        .frame(width: 1, height: 17)
                    Text("19 отзывов")
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack {
                    Image("redflag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 40)
                    
                    Text("-5%")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
