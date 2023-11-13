//
//  ContentView.swift
//  profile app
//
//  Created by Marin Buric on 03.11.2023..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Spacer()
                ProfileHeaderView()
                Spacer()
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 23) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(Text("Follow")
                            .fontWeight(.bold)
                            .foregroundColor(.pink)
                            .font(.system(size: 30))
                        )
                    ProfileNumbersView()
                    Text(AppConstants.aboutTitle)
                        .font(.system(size: 40))
                        .font(.system(.caption))
                    Text(AppConstants.aboutText)
                    .font(.system(.body))
                    .foregroundColor(.black)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(4)
                    .padding(.horizontal)
                    .opacity(0.7)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
