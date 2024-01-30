//
//  ContentView.swift
//  EuroSparExample
//
//  Created by macOS on 30.01.2024.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        ZStack {
            Details()
            
            CustomTabBar()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}


#Preview {
    ContentView()
}
