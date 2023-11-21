//
//  HomeScreen.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct HomeScreen: View {
    
    @State var searchFruit: String = ""
        
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    NavigationLink(
                        destination: MenuView(),
                        label: {
                            Image(systemName: "line.horizontal.3")
                                .foregroundColor(.black)
                        }
                    )
                    Spacer()
                    NavigationLink(
                        destination: CartView(),
                        label: {
                            Image(systemName: "cart.badge.plus")
                                .foregroundColor(.black)
                        }
                    )
                }
                .font(.system(.title3))
                
                Text(HomeConstants.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(HomeConstants.description)
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField(HomeConstants.searchTxt, text: $searchFruit)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }.padding()
                    ).frame(width: 350, height: 50, alignment: .center)
                Spacer()
                Text(HomeConstants.topSelling)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, -20)
                TopSellingView(searchFruit: $searchFruit)
                
                Text(HomeConstants.nearYou)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                NearYouView()
                Spacer()
                
            }.padding()
        }
        .accentColor(.black)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    NavigationView {
        HomeScreen()
            .environmentObject(Cart())
    }
}
