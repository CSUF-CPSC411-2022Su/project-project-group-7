//
//  ContentView.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: CommunityPostView()) {
                Text("CommunityPostView")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
