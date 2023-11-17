//
//  NearYouView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct NearYouView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ForEach(DataConstants.nearYouArray, id: \.id){post in
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 100, height: 100)
                        .overlay(Image(post.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        )
                    VStack(alignment: .leading){
                        Text("\(post.name)")
                            .font(.system(.headline))
                        Text("\(post.time)")
                            .font(.system(.subheadline))
                            .foregroundColor(.gray)
                        Text("\(post.rating)")
                    }
                }
            }
        }
    }
}

#Preview {
    NearYouView()
}
