//
//  DescriptionBlock.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct DescriptionBlock: View {
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Добавка \"Липа\" к чаю 200 г")
                .multilineTextAlignment(.leading)
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .frame(maxWidth: width * 0.75)
            
            HStack(spacing: 16) {
                Text("🇪🇸")
                    .font(.system(size: 32))
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                
                Text("Испания, Риоха")
                    .font(.system(size: 14))
            }
            .padding(.vertical, 8)
            
            Text("Описание")
                .font(.headline)
            
            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                .multilineTextAlignment(.leading)
                .font(.system(size: 14))
                .padding(.bottom, 8)
            
            Text("Основные характеристики")
                .font(.headline)
            
            HStack(alignment: .top, spacing: 0) {
                Text("Производство")
                    .lineLimit(1)
                    .frame(minWidth: 100, alignment: .leading)
                
                DashLine()
                
                Text("Россия, Краснодарский край")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
                    .frame(minWidth: 180, alignment: .trailing)
            }
            
            HStack(alignment: .top) {
                Text("Энергетическая ценность, ккал/100 г")
                    .lineLimit(2)
                    .frame(minWidth: 140, maxWidth: 140, alignment: .leading)
                
                DashLine()

                Text("25 ккал, 10 кДж")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
            }
            
            HStack(alignment: .top) {
                Text("Жиры/100 г")
                    .lineLimit(2)
                
                DashLine()
                
                Text("0,1 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
            }
            
            HStack(alignment: .top) {
                Text("Белки/100 г")
                    .lineLimit(2)
                
                DashLine()
                
                Text("1,3 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
            }
            
            HStack(alignment: .top) {
                Text("Углеводы/100 г")
                    .lineLimit(2)
                
                DashLine()
                
                Text("3,3 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
            }
            
            Text("Все характеристики")
                .font(.headline)
                .foregroundColor(.green)
                .padding(.vertical, 8)
        }
        .padding(.horizontal, 20)
        .font(.system(size: 14))
    }
}

struct DashLine: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 0, y: 14))
                
                path.addLine(to: CGPoint(x: geometry.size.width, y: 14))
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
            .foregroundColor(.primary)
        }
    }
}

#Preview {
    ContentView()
}
