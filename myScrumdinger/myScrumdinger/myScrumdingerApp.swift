//
//  myScrumdingerApp.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import SwiftUI

@main
struct myScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
           
        }
    }
}
