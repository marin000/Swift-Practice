//
//  NotificationsView.swift
//  linkedinClone
//
//  Created by Marin Buric on 24.11.2023..
//

import SwiftUI

struct NotificationsView: View {
    
    @State private var buttonClicked = "all"
    
    var body: some View {
        VStack{
            SearchBar()
            HStack{
                Button(action: {
                    buttonClicked = "all"
               }) {
                   Text("All")
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "all" ? Color.black : Color.white)
                       .background(buttonClicked == "all" ? Color.green : Color.black)
                       .cornerRadius(20)
               }
               Button(action: {
                   buttonClicked = "posts"
               }) {
                   Text("My posts")
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "posts" ? Color.black : Color.white)
                       .background(buttonClicked == "posts" ? Color.green :Color.black)
                       .cornerRadius(20)
               }
               Button(action: {
                   buttonClicked = "mentions"
               }) {
                   Text("Mentions")
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "mentions" ? Color.black : Color.white)
                       .background(buttonClicked == "mentions" ? Color.green : Color.black)
                       .cornerRadius(20)
               }
                Spacer()
            }.padding(.horizontal)
        }
    }
}

#Preview {
    NotificationsView()
}
