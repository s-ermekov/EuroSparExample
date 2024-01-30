//
//  ItemView.swift
//  EuroSparExample
//
//  Created by macOS on 30.01.2024.
//

import SwiftUI

struct Details: View {
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Header()
            
            Divider()
            
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 0) {
                    ImageBlock()
                    
                    DescriptionBlock()
                    
                    ReviewBlock()
                }
                .padding(.bottom, 12)
            }
            
            Divider()
            
            PriceAndQuantity()
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}


#Preview {
    ContentView()
}
