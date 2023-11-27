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
            HStack(alignment: .center){
                Button(action: {
                    buttonClicked = "all"
               }) {
                   Text(NotificationConstants.all)
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "all" ? Color.black : Color.white)
                       .background(buttonClicked == "all" ? Color.green : Color.black)
                       .cornerRadius(20)
               }
               Button(action: {
                   buttonClicked = "posts"
               }) {
                   Text(NotificationConstants.post)
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "posts" ? Color.black : Color.white)
                       .background(buttonClicked == "posts" ? Color.green :Color.black)
                       .cornerRadius(20)
               }
               Button(action: {
                   buttonClicked = "mentions"
               }) {
                   Text(NotificationConstants.mentions)
                       .padding(10)
                       .font(.system(size: 14))
                       .foregroundColor(buttonClicked == "mentions" ? Color.black : Color.white)
                       .background(buttonClicked == "mentions" ? Color.green : Color.black)
                       .cornerRadius(20)
               }
                Spacer()
            }.padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 8)
                .ignoresSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false){
                ForEach(buttonClicked == "all" ? DataConstants.notifData : DataConstants.notifData.filter { $0.type == buttonClicked }, id: \.id) { data in
                    NotificationCard(notifData: data)
                    Divider()
                }
            }
        }
    }
}

#Preview {
    NotificationsView()
}
