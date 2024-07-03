//
//  ScrumsView.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums, id: \.title) {scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
