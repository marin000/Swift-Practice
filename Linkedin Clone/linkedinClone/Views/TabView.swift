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
                    Text("\(TabConstants.home)")
                }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("\(TabConstants.network)")
                }
            Text("\(TabConstants.post)")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("\(TabConstants.post)")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("\(TabConstants.notifications)")
                }
            Text("\(TabConstants.jobs)")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("\(TabConstants.jobs)")
                }
        }
    }
}

#Preview {
    TabScreen()
}
