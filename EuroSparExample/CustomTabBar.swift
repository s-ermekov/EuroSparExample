//
//  CustomTabBar.swift
//  EuroSparExample
//
//  Created by macOS on 31.01.2024.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        HStack {
            TabItem(title: "Главная", imageName: "house")
            
            TabItem(title: "Каталог", imageName: "command", selected: true)
            
            TabItem(title: "Корзина", imageName: "cart")
            
            TabItem(title: "Профиль", imageName: "person")
        }
        .padding(.horizontal)
        .background(Color("tabBarBackground"))
        .frame(height: 76)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    }
}

enum ItemType {
    case pieces
    case kilos
}

struct TabItem: View {
    let title: String
    let imageName: String
    let selected: Bool?
    private let tapAction = { }
    
    init(title: String, imageName: String, selected: Bool? = nil) {
        self.title = title
        self.imageName = imageName
        self.selected = selected
    }
    
    var body: some View {
        ZStack {
            Color.clear
            
            VStack(spacing: 4) {
                Image(systemName: imageName)
                    .font(.title3)
                Text(title)
                    .font(.system(size: 13))
            }
            .onTapGesture(perform: tapAction)
            .foregroundColor(selected ?? false ? Color("accentGreen") : Color("tabBarColor"))
        }
    }
}

#Preview {
    ContentView()
}
