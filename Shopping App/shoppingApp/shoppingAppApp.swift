//
//  shoppingAppApp.swift
//  shoppingApp
//
//  Created by Marin Buric on 14.11.2023..
//

import SwiftUI

@main
struct shoppingAppApp: App {
    
    let cart = Cart()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cart)
        }
    }
}
