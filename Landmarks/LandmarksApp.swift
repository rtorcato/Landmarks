//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Richard Torcato on 2021-03-17.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ModelData())
        }
    }
}
