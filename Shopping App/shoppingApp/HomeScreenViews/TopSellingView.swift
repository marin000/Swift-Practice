//
//  TopSellingView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct TopSellingView: View {
    
    @Binding var searchFruit: String    
    @State private var selectedFruits: [CartModel] = []

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20){
                ForEach(searchFruit.isEmpty ? DataConstants.fruitsArray : DataConstants.fruitsArray.filter { $0.title.rawValue.lowercased().contains(searchFruit.lowercased()) }, id: \.id) { item in
                    NavigationLink(destination: DetailsView(fruit: item)) {
                                FruiCardView(fruits: item)
                                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            }
                }
            }
        }
    }
}

#Preview {
    TopSellingView(searchFruit: .constant(""))
}
