//
//  ContentView.swift
//  Community Hub
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showCommercial = false
    @State private var showVolunteer = false
    
    var body: some View {
        VStack(content: {
            Text("Title").padding()
            Text("Body/Text").frame(width: 300, height: 200).padding()
            
            Toggle("Commercial", isOn: $showCommercial).padding()
            if showCommercial {
                Text("Commercial")
            };
            
            Toggle("Volunteer", isOn: $showVolunteer).padding()
            if showVolunteer {
                Text("Volunteer")
            };

            Text("Time").padding()
            Text("Location/Address").padding()
            
            Spacer()
            
            Button(action: { print("Create Post")
            }) { Text("Post")
            }.padding() //maybe use an image
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
