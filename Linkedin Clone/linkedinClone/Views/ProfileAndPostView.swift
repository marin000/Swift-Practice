//
//  ProfileAndPostView.swift
//  linkedinClone
//
//  Created by Marin Buric on 23.11.2023..
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("\(ProfileAndPostConstants.share)")
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("\(ProfileAndPostConstants.photo)")
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("\(ProfileAndPostConstants.video)")

                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("\(ProfileAndPostConstants.event)")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileAndPostView()
}
