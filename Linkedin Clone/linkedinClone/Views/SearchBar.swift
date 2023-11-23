//
//  SearchBar.swift
//  linkedinClone
//
//  Created by Marin Buric on 22.11.2023..
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                )
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

#Preview {
    SearchBar()
}
