//
//  PostCardView.swift
//  linkedinClone
//
//  Created by Marin Buric on 22.11.2023..
//

import SwiftUI

let samplePostData = PostData(id: 1, image: "02", title: "John Doe", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 8)
                .ignoresSafeArea(.all)
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) \(ProfileAndPostConstants.followersTxt)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("\(ProfileAndPostConstants.postTxt)")
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
