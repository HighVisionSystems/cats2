//
// StartView.swift
// Richard Armstrong Jul 27, 2022
// App startup splash page
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Cats")
                    .font(.system(size: 90))
                    .purpleTitle()
                Text("\u{1F408}")
                    .font(.system(size: 120))
                Text("Are you ready?")
                    .foregroundColor(Color(.purple))
                    .bold()
                NavigationLink {
                    ContentView()
                    } label: {
                        PrimaryButton(text: "Let's go!")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(
                    Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        } .navigationViewStyle(.stack)
    }
}
