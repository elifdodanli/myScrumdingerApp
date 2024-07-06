//
//  DetailView.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 5.07.2024.
//

import SwiftUI

struct DetailView: View {
    @Binding var scrum: DailyScrum
    
    @State private var editingScrum = DailyScrum.emptyScrum
    @State private var isPResentingEditView = false
    var body: some View {
        List{
            Section(header: Text("MEETING INFO")){
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                    .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(6)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(7)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Label(attendee.name,systemImage: "person")
                    
                }
            }
            
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit") {
                isPResentingEditView = true
                editingScrum = scrum
            }
        }
        .sheet(isPresented: $isPResentingEditView){
            NavigationStack {
                DetailEditView(scrum: $editingScrum)
                    .navigationTitle(scrum.title)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Button("Cancel"){
                                isPResentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction){
                            Button("Done") {
                                isPResentingEditView = false
                                scrum = editingScrum
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
