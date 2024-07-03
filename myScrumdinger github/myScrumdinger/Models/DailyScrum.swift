//
//  DailyScrum.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Peter", "Gwen", "Tony", "Bucky"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Elif", "Alice", "Masha", "Aurora", "Tai Lung"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["T'Challa", "Micheal", "Olaf", "Arthur", "Sebastian", "Bella", "Howl", "Bruce", "McQueen", "Alonso"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
