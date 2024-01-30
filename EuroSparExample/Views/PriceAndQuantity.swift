//
//  PriceAndQuantity.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct PriceAndQuantity: View {
    @State private var selection: ItemType = .pieces
    @State private var quantity: Int = 1
    
    func decrement() {
        if quantity > 1 {
            quantity -= 1
        }
    }
    
    func increment() {
        if quantity < 20 {
            quantity += 1
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Picker("", selection: $selection) {
                Text("Шт").tag(ItemType.pieces)
                Text("Кг").tag(ItemType.kilos)
            }
            .labelsHidden()
            .pickerStyle(.segmented)
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    HStack(spacing: 4) {
                        Text("55.9")
                            .font(.system(size: 26, weight: .semibold))
                        Text("₽/кг")
                            .font(.system(size: 16))
                    }
                    Text("199,0")
                        .strikethrough()
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack(spacing: 38) {
                    Button {
                        decrement()
                    } label: {
                        Image(systemName: "minus")
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        Text("\(quantity) шт")
                            .font(.system(size: 16))
                        Text("120,0₽")
                            .font(.system(size: 12))
                            .lineLimit(1)
                    }
                    .frame(width: 46)
                    
                    Button {
                        increment()
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
                .foregroundColor(.white)
                .padding(.horizontal)
                .frame(height: 48)
                .background(
                    RoundedRectangle(cornerRadius: 24)
                        .foregroundColor(Color("accentGreen"))
                )
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .frame(height: 100)
        .background(Color("tabBarBackground"))
        .frame(maxWidth: .infinity)
        .padding(.bottom, 76)
    }
}

#Preview {
    PriceAndQuantity()
}
