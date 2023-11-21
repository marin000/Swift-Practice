//
//  Counter.swift
//  shoppingApp
//
//  Created by Marin Buric on 17.11.2023..
//

import SwiftUI

struct Counter: View {
    @Binding var count: Int
    var body: some View{
        HStack(spacing: 25){
            Button {
                if count < 10 {
                    count+=1
                }
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
        }
        .foregroundColor(.black)
        .frame(width: 130, height: 50)
        .background(Color("bgColor").opacity(0.15))
        .cornerRadius(12)
        .padding()
    }
}
