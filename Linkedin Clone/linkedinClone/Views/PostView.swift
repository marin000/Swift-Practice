//
//  PostView.swift
//  linkedinClone
//
//  Created by Marin Buric on 23.11.2023..
//

import SwiftUI

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                ForEach(DataConstants.postData, id: \.id){data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 45) {
                        ForEach(DataConstants.socialView, id: \.ids){data in
                            VStack{
                                Image(systemName: data.image)
                                Text("\(data.title )")
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PostView()
}
