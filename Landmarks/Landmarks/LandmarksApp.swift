//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by user on 11.12.2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
