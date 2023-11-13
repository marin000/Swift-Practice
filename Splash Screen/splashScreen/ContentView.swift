//
//  ContentView.swift
//  splashScreen
//
//  Created by Marin Buric on 13.11.2023..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Home screen")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
