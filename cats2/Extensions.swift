//
// Extensions.swift
// Richard Armstrong Jul 27, 2022
// App extensions 
// Contains custom type modifiers
//

import Foundation
import SwiftUI

extension Text {
    func purpleTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color(.purple))
            .bold()
            .shadow(radius: 5)
    }
}

extension Image {
    func thumbNail() -> some View {
        self.resizable()
            .scaledToFit()
            .cornerRadius(25)
            .frame(width: 100, height: 100, alignment: .center)
    }
}

extension Image {
    func gameSize() -> some View {
        self.resizable()
            .scaledToFit()
            .cornerRadius(25)
            .frame(width: 200, height: 200, alignment: .center)
    }
}
