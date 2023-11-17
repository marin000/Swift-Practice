//
//  MenuView.swift
//  shoppingApp
//
//  Created by Marin Buric on 16.11.2023..
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        List {
            NavigationLink("On Boarding", destination: OnBoardingScreenView())
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Menu", displayMode: .inline)
    }
}

#Preview {
    MenuView()
}
