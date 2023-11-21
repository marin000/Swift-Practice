//
//  CartView.swift
//  shoppingApp
//
//  Created by Marin Buric on 17.11.2023..
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart: Cart

    var body: some View {
        VStack {
            Text(CartConstants.title)
                .fontWeight(.bold)
                .font(.title)
                .padding(.bottom, 20)
            Spacer()
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 3){
                    ForEach(cart.selectedFruits, id: \.id) { item in
                        Text("\(CartConstants.quantityTxt) \(item.quantity)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .padding(.bottom, -50)
                        FruiCardView(fruits: item.fruit)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    }
                }
            }
            Text("\(CartConstants.priceTxt) \(cart.cartTotalPrice, specifier: "%.2f")")
                .font(.system(.title2))
                .fontWeight(.bold)
                .padding(.top, 20)
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text(CartConstants.buttonTxt)
                        .font(.system(.title3))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                )
                .padding(.horizontal)
        }
    }
}

#Preview {
    NavigationView {
       CartView()
           .environmentObject(Cart())
   }
}
