//
//  CardView.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//


import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
                    
                    .padding(.trailing, 20)
                
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .background(scrum.theme.mainColor) // Apply background color here
        .cornerRadius(10) // Rounded corners for better aesthetics
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

