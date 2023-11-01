//
//  MemoryGameApp.swift
//  MemoryGame
//
//  Created by Norika on 10/22/23.
//

import SwiftUI

@main
struct MemoryGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: CatMemoryGame())
        }
    }
}
