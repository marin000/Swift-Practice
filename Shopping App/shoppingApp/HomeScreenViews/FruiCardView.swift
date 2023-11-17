//
//  FruiCardView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .orange, image: "orange", price: "2.45$", color: "1", size: "100g")

struct FruiCardView: View {
    let fruits: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 100)
            }.offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    FruiCardView(fruits: images)
}
