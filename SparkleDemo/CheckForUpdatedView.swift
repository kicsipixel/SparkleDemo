//
//  CheckForUpdatesView.swift
//  SparkleDemo
//
//  Created by Szabolcs Tóth on 17.06.2023.
//  Copyright © 2023 Szabolcs Tóth. All rights reserved.
//

import SwiftUI

// This additional view is needed for the disabled state on the menu item to work properly before Monterey.
// See https://stackoverflow.com/questions/68553092/menu-not-updating-swiftui-bug for more information
struct CheckForUpdatesView: View {
    @ObservedObject var updaterViewModel: UpdaterViewModel
    
    var body: some View {
        Button("Check for Updates…", action: updaterViewModel.checkForUpdates)
            .disabled(!updaterViewModel.canCheckForUpdates)
    }
}

struct CheckForUpdatedView_Previews: PreviewProvider {
    static var previews: some View {
        CheckForUpdatesView(updaterViewModel: UpdaterViewModel())
    }
}
