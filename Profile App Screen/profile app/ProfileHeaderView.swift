//
//  ProfileHeaderView.swift
//  profile app
//
//  Created by Marin Buric on 06.11.2023..
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
            Image("myImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: .top)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: .pink, radius: 5, x: 5, y: 5)
            Text(AppConstants.profileName)
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .font(.system(.largeTitle))
                .shadow(radius: 5)
            Text(AppConstants.profileTitle)
                .foregroundColor(.white)
                .font(.body)
            HStack(spacing: 40){
                Image(systemName: "heart.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "network")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "message.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "phone.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50, alignment: .center)
            .shadow(color: .pink, radius: 5, y: 8)
        }
    }
}

#Preview {
    ProfileHeaderView()
}
