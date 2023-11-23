//
//  HomeScreen.swift
//  linkedinClone
//
//  Created by Marin Buric on 23.11.2023..
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
