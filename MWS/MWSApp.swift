//
//  MWSApp.swift
//  MWS
//
//  Created by Max M'bey on 23/12/2023.
//

import SwiftUI
import SwiftData

@main
struct MWSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Variables_model.self)
        }
        
    }
}
