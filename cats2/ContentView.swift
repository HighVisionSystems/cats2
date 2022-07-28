//
// ContentView.swift
// Richard Armstrong Jul 27, 2022
// App content page.
// Displays cat pictures sourced from cataas.com
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    // URL returns a random cat pic
    var imageURL = URL(string: "https://cataas.com//cat?type=square")
    
    var body: some View {
        ScrollView() {
            LazyVStack {
                ForEach((1...5), id: \.self) {_ in
                    AsyncImage(url: imageURL) { phase in
                        switch phase {
                        case .empty:
                            ProgressView("Loading...")
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 300, maxHeight: 300)
                        case .failure:
                            Image(systemName: "tortoise.fill")
                        default:
                            EmptyView()
                        }
                    }
                }
            }
        }
    }
}
        

