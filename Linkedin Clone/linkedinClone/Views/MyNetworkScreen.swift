//
//  MyNetworkScreen.swift
//  linkedinClone
//
//  Created by Marin Buric on 22.11.2023..
//

import SwiftUI

struct MyNetworkScreen: View {
    
    var body: some View {
        VStack{
            SearchBar()
            HStack{
                Text(NetworkConstants.manageTxt)
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 8)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text(NetworkConstants.invitationsTxt)
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                Divider()
                ForEach(DataConstants.networkData, id: \.id){ data in
                    InvitiationView(Data: data)
                    Divider()
                }
            }
        }
    }
}

#Preview {
    MyNetworkScreen()
}
