//
//  SparkleDemoApp.swift
//  SparkleDemo
//
//  Created by Szabolcs Tóth on 17.06.2023.
//  Copyright © 2023 Szabolcs Tóth. All rights reserved.
//

import Sparkle
import SwiftUI

@main
struct SparkleDemoApp: App {
    
    @StateObject var updaterViewModel = UpdaterViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(width: 640, height: 480)
        }
        .commands {
            CommandGroup(after: .appInfo) {
                CheckForUpdatesView(updaterViewModel: updaterViewModel)
            }
        }
    }
}
