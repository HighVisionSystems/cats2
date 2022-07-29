# cats2
Catty
This iOS SwiftUI app uses async web API calls to retrieve random cat pics from an API service, and displays
them in a scrollView LazyVStack.  Going back and clicking the button will go get another set of cat pics.  
If the internet connection is spotty one will get a tortoise instead of a cat pic for API calls that fail to 
deliver the data.  I started writing my own ImageURL() class/function but found AsyncImage() and life got a
lot easier.  LOL

The core solution to the underlying coding problem and the special sauce is in ContentView.swift.  The rest 
of the code is supporting the app's rather attractive but minimal startup splash screen.

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
        

