//
//  ContentView.swift
//  SparkleDemo
//
//  Created by Szabolcs Tóth on 17.06.2023.
//  Copyright © 2023 Szabolcs Tóth. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        content
    }
    
    @ViewBuilder
    var content: some View {
        Text("v\(Bundle.main.versionNumber) Bundle: \(Bundle.main.buildNumber)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Bundle {
    var buildNumber: String {
        return infoDictionary?["CFBundleVersion"] as! String
    }
    
    var versionNumber: String {
        return infoDictionary?["CFBundleShortVersionString"] as! String
    }
}
