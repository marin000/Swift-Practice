//
//  CartData.swift
//  shoppingApp
//
//  Created by Marin Buric on 17.11.2023..
//

import Foundation

struct CartModel: Identifiable {
    let id: UUID = UUID()
    var fruit: FruitModel
    var quantity: Int
    var totalFruitPrice: Double
}

class Cart: ObservableObject {
    @Published var selectedFruits: [CartModel] = []
    
    var cartTotalPrice: Double {
        selectedFruits.reduce(0) {
            $0 + $1.totalFruitPrice
        }
    }
    
    func addToCart(newSelectedFruit: CartModel){
        if let existingCartItemIndex = selectedFruits.firstIndex(where: { $0.fruit.title.rawValue == newSelectedFruit.fruit.title.rawValue }) {
            selectedFruits[existingCartItemIndex].quantity += newSelectedFruit.quantity
            selectedFruits[existingCartItemIndex].totalFruitPrice += newSelectedFruit.totalFruitPrice
       } else {
           selectedFruits.append(newSelectedFruit)
       }
    }
}
