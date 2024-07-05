//
//  Theme.swift..swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import SwiftUI

enum Theme : String {
    case bubblegum
       case buttercup
       case indigo
       case lavender
       case magenta
       case navy
       case orange
       case oxblood
       case periwinkle
       case poppy
       case purple
       case seafoam
       case sky
       case tan
       case teal
       case yellow
       
       var accentColor: Color {
           switch self {
           case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
           case .indigo, .magenta, .navy, .oxblood, .purple: return .white
           }
       }
    var mainColor: Color {
        switch self {
        case .bubblegum: return .pink
        case .buttercup: return .yellow
        case .indigo: return .indigo
        case .lavender: return .purple
        case .navy: return .blue
        case .orange: return .orange
        case .oxblood: return .red
        case .periwinkle: return .blue
        case .poppy: return .red
        case .magenta: return Color(red: 1.0, green: 0.0, blue: 1.0)
        case .purple: return .purple
        case .seafoam: return .green
        case .sky: return .blue
        case .tan: return .brown
        case .teal: return .teal
        case .yellow: return .yellow
        
        }
    }
    var name: String {
           rawValue.capitalized
       }

}
