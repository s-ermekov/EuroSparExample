//
//  ReviewBlock.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct ReviewBlock: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Отзывы")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Text("Все 152")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.green)
            }
            .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<3, id: \.self) { _ in
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Александра В.")
                                .font(.system(size: 14, weight: .semibold))
                            
                            
                            Text("7 мая 2021")
                                .font(.system(size: 13))
                                .foregroundColor(.secondary)
                            
                            HStack(spacing: 2) {
                                ForEach(0..<4) { _ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                }
                                Image(systemName: "star.fill")
                                    .foregroundColor(.secondary.opacity(0.35))
                            }
                            .font(.system(size: 14))
                            
                            Text("Хорошая добавка, мне очень понравилась! Хочу чтобы все добавки были такими!")
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .padding(12)
                        .frame(width: 250, height: 150)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .colorInvert()
                                .shadow(color: .primary.opacity(0.2), radius: 8)
                        )
                        .padding(.vertical)
                        
                    }
                }
                .padding(.horizontal)
            }
            
            Button {
                // add review
            } label: {
                Text("Оставить отзыв")
                    .foregroundColor(Color("accentGreen"))
                    .font(.system(size: 14, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 36)
                    .background(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color("accentGreen"), lineWidth: 3)
                    )
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ContentView()
}
