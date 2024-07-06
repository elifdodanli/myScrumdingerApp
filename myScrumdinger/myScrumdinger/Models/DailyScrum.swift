//
//  DailyScrum.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import Foundation

struct DailyScrum : Identifiable{
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get{
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
        }
    var theme: Theme
    
    
    init(id: UUID = UUID(), title: String,  attendees: [String], lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}
extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
                    self.id = id
                    self.name = name
                }
    }
    static var emptyScrum: DailyScrum {
            DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
        }
}

    

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Peter", "Sophia", "ben10", "Simba"],
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
