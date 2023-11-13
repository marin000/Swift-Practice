//
//  ProfileNumbersView.swift
//  profile app
//
//  Created by Marin Buric on 06.11.2023..
//

import SwiftUI

struct ProfileNumbersView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60){
            VStack{
                Text("1500")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.pink)
                Text(AppConstants.appreciationsTitle)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            VStack{
                Text("300")
                    .font(.title)
                    .foregroundColor(.pink)
                Text(AppConstants.followersTitle)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            VStack{
                Text("733")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.pink)
                Text(AppConstants.followingTitle)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    ProfileNumbersView()
}
