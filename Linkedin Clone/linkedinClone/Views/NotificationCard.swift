//
//  NotificationCard.swift
//  linkedinClone
//
//  Created by Marin Buric on 27.11.2023..
//

import SwiftUI

let sampleNotifData = NotifModel(id: 1, name: "John Doe", profilePhoto: "01", notifText: "Liked your post", time: "1h", type: "posts")

struct NotificationCard: View {
    
    var notifData: NotifModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(notifData.profilePhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70, alignment: .leading)
            VStack(alignment: .leading, spacing: 5){
                HStack(alignment: .center) {
                    Text("\(notifData.name):")
                        .font(.body)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(notifData.notifText)
                        .font(.body)
                        .lineLimit(3)
                    Spacer()
                    VStack{
                        Text("\(notifData.time)")
                        Text("⋮")
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    NotificationCard(notifData: sampleNotifData)
}
