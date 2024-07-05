//
//  myScrumdingerApp.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import SwiftUI

@main
struct myScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
           
        }
    }
}
