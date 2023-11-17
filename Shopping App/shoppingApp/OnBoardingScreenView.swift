//
//  OnBoardingScreenView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        ZStack {
            NavigationView{
                VStack(spacing: 30){
                    Spacer()
                    Image("img")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .padding()
                    VStack(alignment: .leading, spacing: 10){
                        Text(OnBoardingConstants.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(.largeTitle))
                        Text(OnBoardingConstants.description)
                            .font(.system(.title3))
                            .foregroundColor(.black.opacity(0.7))
                    }
                    .padding()
                    Spacer()
                    NavigationLink(destination: HomeScreen()) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("6"))
                            .frame(width: 280, height: 60, alignment: .trailing)
                            .overlay(
                                HStack(spacing: 10){
                                    Text(OnBoardingConstants.button)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    Image(systemName: "chevron.right")
                                }.foregroundColor(.black)
                            )
                    }
                    Spacer()
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    OnBoardingScreenView()
}
