//
//  TrailingLabelStyle.swift
//  myScrumdinger
//
//  Created by Elif Dodanlı on 3.07.2024.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
        
        
    }
}
    
    extension LabelStyle where Self == TrailingIconLabelStyle {
        static var trailingIcon: Self { Self()}
    }


