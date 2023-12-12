//
//  Projeto_MenuTechApp.swift
//  Projeto_MenuTech
//
//  Created by User on 24/11/23.
//

import SwiftUI

@main
struct Projeto_MenuTechApp: App {
    
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
