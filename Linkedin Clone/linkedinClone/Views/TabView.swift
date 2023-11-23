//
//  TabView.swift
//  linkedinClone
//
//  Created by Marin Buric on 23.11.2023..
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

#Preview {
    TabScreen()
}
