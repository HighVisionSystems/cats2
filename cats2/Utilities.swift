//
// Utilities.swift
// Richard Armstrong Jul 27, 2022
// App utilities 
// Contains custom supporting utilities
//

import SwiftUI

struct PrimaryButton: View {
    var text: String 
    var background: Color = Color(.purple)
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

