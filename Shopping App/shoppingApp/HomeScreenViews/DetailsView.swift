//
//  DetailsView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct DetailsView: View {
    
//    @ObservedObject var cart: Cart = Cart()
    @EnvironmentObject var cart: Cart
    @State var fruit: FruitModel
    @State private var quantity: Int = 0
    @State private var showingAlert = false
    @State private var navigateToCart = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.image)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(fruit.title.rawValue)")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            Text("\(fruit.size)")
                .padding(.horizontal)
            Text(DetailsConstants.description)
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5){
                    Text(DetailsConstants.deliveryTimeTxt)
                    Text(DetailsConstants.deliveryTime)
                }
            }.padding(.horizontal)
            
            HStack{
                Text("$\(fruit.price, specifier: "%.2f") each")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter(count: $quantity)
            }
            
            Button(action: {
                let totalPrice = Double(quantity) * fruit.price
                let newCartItem = CartModel(fruit: fruit, quantity: quantity, totalFruitPrice: totalPrice)
                cart.addToCart(newSelectedFruit: newCartItem)
                showingAlert = true
            })
            {
                Image("bg")
                    .resizable()
                    .frame(width: 350, height: 50, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay(
                        Text(DetailsConstants.buttonCart)
                            .font(.system(.title3))
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    )
                    .padding(.horizontal)
            }
            .disabled(quantity == 0)
            .alert(isPresented: $showingAlert){
                Alert(title: Text(DetailsConstants.alert),
                      primaryButton: .default(Text(DetailsConstants.alertPrimaryButtonTxt), action: {
                        quantity = 0
                }),
                      secondaryButton: .cancel(Text(DetailsConstants.alertSecondaryButtonTxt), action: {
                        navigateToCart = true
                        quantity = 0
                      })
                )
            }
            .navigationDestination(isPresented: $navigateToCart){
                CartView()
            }
        }
    }
}

#Preview {
    NavigationView {
        DetailsView(fruit: FruitModel(id: 1, title: .orange, image: "orange", price: 2.45, color: "1", size: "100g"))
            .environmentObject(Cart())
    }
}
